/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;


import com.team.bnb.model.Users;
import com.team.bnb.repositories.UsersRepository;
import com.team.bnb.services.UsersService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Haris
 */

//@RequestMapping("/rest/whatever")
//@RestController   //na to kanw Controller
@Controller
public class RegisterController {
    
    
    
    @Autowired
    UsersService usersService;
    
//    @PreAuthorize("hasAnyRole('ADMIN')")
//    @GetMapping("/secured/all")
//    public String secured(){
//    return "welcome";}
    
    @GetMapping("/welcome")
    public String welcome() {
        
        return "welcome";
    }
    
    
    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String insertUser(ModelMap mm) {
        Users u = new Users();
        mm.addAttribute("user", u);
        return "register";
    }

    @RequestMapping(value = "doRegister", method = RequestMethod.POST)
    public String doRegister(ModelMap mm, @ModelAttribute("user") @Valid Users u) {
        usersService.insert(u);
        return "redirect:/welcome";
    }
    
}
