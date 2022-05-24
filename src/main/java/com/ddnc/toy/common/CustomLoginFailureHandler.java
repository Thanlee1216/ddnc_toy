package com.ddnc.toy.common;

import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



public class CustomLoginFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                        AuthenticationException exception) throws IOException, ServletException {

        String memberID = (String) request.getParameter("memberId");
        //System.out.println("memberID : 0000 "+memberID);

        request.getSession().setAttribute("memberId", memberID);

        if (exception instanceof InternalAuthenticationServiceException) {
            getRedirectStrategy().sendRedirect(request, response, "/member/password/resetPasswordStepOne");
        }
        else{
            getRedirectStrategy().sendRedirect(request, response, "/loginFail");
        }
    }

}
