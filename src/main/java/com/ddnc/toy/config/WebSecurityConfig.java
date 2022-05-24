package com.ddnc.toy.config;

import com.ddnc.toy.common.CustomAccessDeniedHandler;
import com.ddnc.toy.common.CustomLoginFailureHandler;
import com.ddnc.toy.common.CustomLoginSuccessHandler;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

@RequiredArgsConstructor
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final CustomAuthenticationProvider customAuthenticationProvider;
//    private final UserService userService;
    private final SessionRegistry sessionRegistry;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(customAuthenticationProvider);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        CustomLoginSuccessHandler handler = new CustomLoginSuccessHandler();
//        handler.addIgnoreUrl("member/verification/main");
//        handler.addIgnoreUrl("member/registerForm");
//        handler.addIgnoreUrl("member/joinMember");
//        handler.addIgnoreUrl("/loginProcess");
//        handler.addIgnoreUrl("/login");
//        handler.addIgnoreUrl("/loginFail");


        http.addFilterBefore(characterEncodingFilter(), SecurityContextPersistenceFilter.class)
                .formLogin().loginPage("/login")
                .usernameParameter("memberId")
                .passwordParameter("password")
                .loginProcessingUrl("/loginProcess")
                .failureHandler(new CustomLoginFailureHandler())
                .successHandler(handler)

                .and().cors()

                .and()
                    .authorizeRequests()
                    .antMatchers("/join/*",
                            "/news/*",
                            "/notice/*",
                            "/terms/*",
                            "/cs/*",
                            "/intro/*",
                            "/member/id/*",
                            "/mail_test",
                            "/member/password/*",
                            "/resources/*",
                            "/landing/*").permitAll()
                    .antMatchers("/mypage/*", "/mypage/factoring/*", "/mypage/contract/*/*"
                            , "/member/withdrawal/*").hasRole("MEMBER")

                .and()
                    .logout().logoutUrl("/user/logout")
                    .invalidateHttpSession(true)
                    .logoutSuccessUrl("/home")

//                .and()
//                .csrf().ignoringAntMatchers("")

                .and()
                    .exceptionHandling()
                    .accessDeniedHandler(new CustomAccessDeniedHandler())

                .and()
                    .rememberMe()
                    .key("key")
                    .tokenValiditySeconds(1000)
//                    .userDetailsService(userService)

                .and()
                    .sessionManagement()
                    .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
                    .sessionFixation().newSession()
                    .maximumSessions(1)
                    .expiredUrl("/home")
                    .maxSessionsPreventsLogin(false)
                    .sessionRegistry(sessionRegistry);
    }

    public CharacterEncodingFilter characterEncodingFilter() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return characterEncodingFilter;
    }

}