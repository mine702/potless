package com.potless.backend.project.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class WorkerRequestDto {

    private Long teamId;

    private ArrayList<String> memberNameList;

}
