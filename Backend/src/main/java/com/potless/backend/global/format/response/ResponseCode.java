package com.potless.backend.global.format.response;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;

@Getter
@RequiredArgsConstructor
public enum ResponseCode {

    /* 회원(Member) */
    MEMBER_SIGNUP_SUCCESS(HttpStatus.CREATED, "회원가입이 정상적으로 완료되었습니다."),
    NICKNAME_CHECK_SUCCESS(HttpStatus.OK, "닉네임 검사가 성공적으로 이루어졌습니다."),
    LOGIN_SUCCESS_WEB(HttpStatus.OK, "웹 로그인이 성공적으로 이루어졌습니다."),
    LOGIN_SUCCESS_APP(HttpStatus.OK, "앱 로그인이 성공적으로 이루어졌습니다."),
    SOCIAL_LOGIN_SUCCESS(HttpStatus.OK, "소셜 로그인이 성공적으로 이루어졌습니다."),
    LOGOUT_SUCCESS(HttpStatus.OK, "로그아웃이 성공적으로 이루어졌습니다."),
    PASSWORD_RESET_SUCCESS(HttpStatus.OK, "비밀번호 재설정이 성공적으로 이루어졌습니다."),
    PASSWORD_UPDATE_SUCCESS(HttpStatus.OK, "비밀번호 업데이트가 성공적으로 이루어졌습니다."),
    MEMBER_INFO_UPDATE_SUCCESS(HttpStatus.OK, "회원 정보가 성공적으로 업데이트되었습니다."),
    TEAM_CONNECT_TO_PROJECT(HttpStatus.OK,"팀정보가 프로젝트에 연결이 되었습니다."),

    EMAIL_VERIFICATION_SENT(HttpStatus.OK, "이메일 인증코드가 성공적으로 발송되었습니다."),
    EMAIL_VERIFIED_SUCCESS(HttpStatus.OK, "이메일이 성공적으로 인증되었습니다."),
    EMAIL_VERIFICATION_REQUEST_SUCCESS(HttpStatus.OK, "이메일 인증요청이 성공적으로 처리되었습니다."),
    NICKNAME_AVAILABLE(HttpStatus.OK, "사용 가능한 닉네임입니다"),
    DUPLICATE_NICKNAME(HttpStatus.OK, "중복된 닉네임입니다"),

    /* 포트홀(Pothole) */
    POTHOLE_LIST_FETCHED(HttpStatus.OK, "포트홀 리스트 정보가 성공적으로 조회되었습니다."),
    POTHOLE_FETCHED(HttpStatus.OK, "포트홀 관련 정보가 성공적으로 조회되었습니다."),
    POTHOLE_DETECTED(HttpStatus.CREATED, "포트홀 감지 정보가 성공적으로 저장되었습니다."),
    POTHOLE_DELETED(HttpStatus.OK, "포트홀 감지 정보가 성공적으로 삭제되었습니다."),

    /* 프로젝트(Project) */
    PROJECT_LIST_FETCHED(HttpStatus.OK, "프로젝트 리스트 정보가 성공적으로 조회되었습니다."),
    PROJECT_FETCHED(HttpStatus.OK, "프로젝트 정보가 성공적으로 조회되었습니다."),
    PROJECT_DETECTED(HttpStatus.CREATED, "프로젝트 정보가 성공적으로 생성되었습니다."),
    PROJECT_DELETED(HttpStatus.OK, "프로젝트 정보가 성공적으로 삭제되었습니다."),

    /* 경로(Path) */
    OPTIMAL_PATH_FOUND(HttpStatus.OK, "최적 경로 조회가 성공적으로 이루어졌습니다."),

    /* AWS(Path) */
    SUCCESS_TO_UPLOAD(HttpStatus.OK, "S3에 이미지 저장이 성공 했습니다");

    private final HttpStatus status;
    private final String message;

}

