package com.ddnc.toy.config;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;

@RequiredArgsConstructor
@Configuration
public class CustomAuthenticationProvider implements AuthenticationProvider {

    private final PasswordEncoder passwordEncoder;
//    private final UserService userService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String userId = (String)authentication.getPrincipal();
        String userPassword = (String)authentication.getCredentials();

//        SpringUser springUser = (SpringUser)userService.loadUserByUsername(userId);

//        if (!passwordEncoder.matches(userPassword, springUser.getPassword())) {
//            userService.updateFailedLoginCountPlus(userId);
            throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
//        }

//        userService.updateMemberLoginDt(springUser.getMember().getMemberNo());
//        userService.updateFailedLoginCountInit(userId);

//        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userId, userPassword, springUser.getAuthorities());
//        authenticationToken.setDetails(springUser);

//        return authenticationToken;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(UsernamePasswordAuthenticationToken.class);
    }
}
