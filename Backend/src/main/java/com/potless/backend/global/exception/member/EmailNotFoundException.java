package com.potless.backend.global.exception.member;

import com.potless.backend.global.format.response.ErrorCode;
import lombok.Getter;

@Getter
public class EmailNotFoundException extends RuntimeException {

    private final ErrorCode errorCode;

    public EmailNotFoundException() {
        this.errorCode = ErrorCode.EMAIL_NOT_FOUND;
    }
}
