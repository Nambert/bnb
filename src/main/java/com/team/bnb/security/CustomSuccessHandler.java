/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.security;

import com.team.bnb.model.Users;
import com.team.bnb.repositories.UsersRepository;
import java.io.IOException;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    UsersRepository usersRepository;
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication a) throws IOException, ServletException {
//        System.out.println(a.getName());
//        System.out.println(a.getAuthorities());
//        System.out.println(a.getCredentials());
//        System.out.println(a.getDetails());
//        System.out.println(a.getPrincipal());
       Optional<Users> user=usersRepository.findByUsername(a.getName());
       request.getSession().setAttribute("username", user.get().getUsername());
       request.getSession().setAttribute("id", user.get().getId());
        
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
