package com.potless.backend.damage.service;

import com.potless.backend.aws.service.AwsService;
import com.potless.backend.damage.dto.controller.request.DamageSetRequestDTO;
import com.potless.backend.damage.dto.service.request.DamageSetRequestServiceDTO;
import com.potless.backend.damage.dto.service.request.ReDetectionRequestDTO;
import com.potless.backend.damage.dto.service.response.ReDetectionResponseDTO;
import com.potless.backend.damage.dto.service.response.kakao.Address;
import com.potless.backend.damage.dto.service.response.kakao.RoadAddress;
import com.potless.backend.damage.entity.enums.Status;
import com.potless.backend.global.exception.pothole.PotholeNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Log4j2
@Service
@EnableAsync
@RequiredArgsConstructor
public class AsyncService {

    private final IDamageService iDamageService;
    private final KakaoService kakaoService;
    private final AwsService awsService;
    private final ReDetectionApiService detectionApiService;
    private final FileService fileService;

    @Async
    public void setDamageAsyncMethod(DamageSetRequestDTO damageSetRequestDTO, File imageFile, String hexagonIndex) throws IOException {
        try {

            //fastApi 2차 탐지 요청 수행 및 결과 반환
            ReDetectionRequestDTO detectionRequestDTO = new ReDetectionRequestDTO(imageFile);

            ReDetectionResponseDTO detectionResult = detectionApiService.reDetectionResponse(detectionRequestDTO);

            if (detectionResult.getSeverity() != 0) {

                damageSetRequestDTO.setSeverity(detectionResult.getSeverity());
                damageSetRequestDTO.setWidth((double) detectionResult.getWidth());

                // 2차 탐지 성공하면 AfterVerification/BeforeWork/ 파일 삽입
//                String fileName = "AfterVerification/BeforeWork/" + System.currentTimeMillis() + "_" + imageFile.getName();
//                Map<String, String> fileUrlAndKey = awsService.uploadFileToS3(imageFile, fileName);
//                List<String> fileUrls = new ArrayList<>(fileUrlAndKey.values());

//                fastApi에서 aws에 업로드, 받아온 url set
                List<String> fileUrls = new ArrayList<>();
                fileUrls.add(detectionResult.getUrl());
                damageSetRequestDTO.setImages(fileUrls);

                Files.delete(imageFile.toPath());

                // 비동기로 처리하고 바로 응답 반환 검증
                kakaoService.fetchKakaoData(damageSetRequestDTO.getX(), damageSetRequestDTO.getY())
                        .thenAcceptAsync(data -> {
                            try {
                                RoadAddress roadAddress = data.getDocuments().get(0).getRoad_address();
                                Address address = data.getDocuments().get(0).getAddress();
                                String city = (address != null) ? address.getRegion_1depth_name() : roadAddress.getRegion_1depth_name();

                                String addressName = (address != null) ? address.getAddress_name() : roadAddress.getAddress_name();
                                String location;
                                String area;

                                if (city.equals("대전") || city.equals("서울")) {
                                    location = (address != null) ? address.getRegion_3depth_name() : "정보가 존재하지 않습니다";
                                    area = (address != null) ? address.getRegion_2depth_name() : roadAddress.getRegion_2depth_name();
                                } else {
                                    location = "기타";
                                    area = "기타";
                                }

                                // 2 2차로 헥사곤 인덱스 검색 후 데미지 조회 하고 없을때 인서트
                                DamageSetRequestServiceDTO serviceDTO = DamageSetRequestServiceDTO.builder()
                                        .dirX(damageSetRequestDTO.getX())
                                        .dirY(damageSetRequestDTO.getY())
                                        .dtype(damageSetRequestDTO.getDtype())
                                        .width(damageSetRequestDTO.getWidth())
                                        .address(addressName)
                                        .severity(damageSetRequestDTO.getSeverity())
                                        .status(Status.작업전)
                                        .area(area)
                                        .location(location)
                                        .width(damageSetRequestDTO.getWidth())
                                        .images(damageSetRequestDTO.getImages())
                                        .memberId(damageSetRequestDTO.getMemberId())
                                        .build();

                                serviceDTO.setHexagonIndex(hexagonIndex);
                                iDamageService.setAsyncDamage(serviceDTO);
                            } catch (Exception e) {
                                for (String s : fileUrls)
                                    awsService.deleteFile(s);
                                throw new PotholeNotFoundException();
                            }
                        });
            }
        } catch (IOException e) {
            fileService.deleteFile(imageFile);
            throw new RuntimeException(e);
        }

    }
}

