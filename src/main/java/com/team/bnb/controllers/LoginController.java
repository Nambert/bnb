/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;

import com.team.bnb.model.BnbUserDetails;
import com.team.bnb.model.Roles;
import com.team.bnb.model.Users;
import com.team.bnb.services.BnbUsersDetailService;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.context.request.WebRequest;

/**
 *
 * @author Haris
 */
@Controller
public class LoginController {

    @Autowired
    BnbUsersDetailService bnbUsersDetailService;

    @GetMapping("/customlogin")
    public String login(ModelMap mm) {

        return "customlogin";
    }

    @PostMapping("/dologin")
    public String dologin(ModelMap mm, HttpServletRequest request) {
        String username = request.getParameter("username");
        Users user = (BnbUserDetails) bnbUsersDetailService.loadUserByUsername(username);
        if (user.getRolesCollection().get(0).getId().equals(1)) {
            request.getSession().setAttribute("user", user);
            return "admin";
        } else if (user.getRolesCollection().get(0).getId().equals(3)) {
            request.getSession().setAttribute("user", user);
            return "redirect:/loadHost";
        } else if (user.getRolesCollection().get(0).getId().equals(2)) {
             request.getSession().setAttribute("user", user);
            return "client";
        }else return "welcome";
    }
}
