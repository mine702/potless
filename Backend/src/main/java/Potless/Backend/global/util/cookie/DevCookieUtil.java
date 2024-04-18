package Potless.Backend.global.util.cookie;

import Potless.Backend.global.util.CookieUtil;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Profile;
import org.springframework.http.ResponseCookie;
import org.springframework.stereotype.Component;

@Log4j2
@Profile("dev")
@Component
public class DevCookieUtil implements CookieUtil {

    public DevCookieUtil() {
        log.info("profile:dev, message:DevCookieUtil is configured");
    }


    @Override
    public void addCookie(String key, String value, int expiredTime, HttpServletResponse response) {
        response.addHeader("Set-Cookie", createCookie(key, value, expiredTime).toString());
    }

    @Override
    public void removeCookie(String key, HttpServletResponse response) {
        response.addHeader("Set-Cookie", createCookie(key, null, 0).toString());
    }

    private ResponseCookie createCookie(String key, String value, int expiredTime) {
        return ResponseCookie.from(key, value)
                             .httpOnly(true)
                             .path("/")
                             .maxAge(expiredTime)
                             .build();
    }

}
