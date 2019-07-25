/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.security;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

/**
 *
 * @author Haris
 */
@Component
public class CustomSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication a) throws IOException, ServletException {
//        System.out.println(a.getName());
//        System.out.println(a.getAuthorities());
//        System.out.println(a.getCredentials());
//        System.out.println(a.getDetails());
//        System.out.println(a.getPrincipal());
        request.getSession().setAttribute("username", a.getName());
        request.getSession().setAttribute("id", a.getPrincipal());
        
        for (GrantedAuthority authority : a.getAuthorities()) {
            if (authority.getAuthority().equals("ROLE_CLIENT")) {
                response.sendRedirect("client/loadClient");
            } else if (authority.getAuthority().equals("ROLE_HOST")) {
                response.sendRedirect("host/loadHost");
            } else {
                response.sendRedirect("admin/loadAdmin");
            }
        }
    }
}
