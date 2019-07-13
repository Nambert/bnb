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
    public String dologin(ModelMap mm, WebRequest request) {
        String username = request.getParameter("username");
        Users user = (BnbUserDetails) bnbUsersDetailService.loadUserByUsername(username);
        if (user.getRolesCollection().get(0).getId().equals(1)) {
            return "admin";
        } else {
            return "host";
        }
   }
}
