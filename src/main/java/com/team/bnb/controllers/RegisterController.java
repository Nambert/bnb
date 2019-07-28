/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;

import com.team.bnb.model.Users;
import com.team.bnb.repositories.UsersRepository;
import com.team.bnb.security.EmailConfirmation;
import com.team.bnb.services.ActivationService;
import com.team.bnb.services.UsersService;
import com.team.bnb.validators.UsersValidator;
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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;



/**
 *
 * @author Haris
 */
@Controller
public class RegisterController {

    @Autowired
    UsersService usersService;

    @Autowired
    UsersValidator usersValidator;
    
    @Autowired
    ActivationService activationService;

//    @PreAuthorize("hasAnyRole('ADMIN')")
//    @GetMapping("/secured/all")
//    public String secured(){
//    return "welcome";}
    
    @GetMapping("/welcome")
    public String welcome() {

        return "welcome";
    }

    @RequestMapping(value = "registerClient", method = RequestMethod.GET)
    public String insertUser(ModelMap mm) {
        Users u = new Users();
        mm.addAttribute("user", u);
        return "registerClient";
    }

    @RequestMapping(value = "doRegisterClient", method = RequestMethod.POST)
    public String doRegister(ModelMap mm, @ModelAttribute("user") @Valid Users u, BindingResult br) {
        usersValidator.validate(u, br);
        if (br.hasErrors()) {
            return "registerClient";
        } else {
            String serial = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt(12));
            usersService.insertClient(u);
            u=usersService.findById(u);
            activationService.insertActivation(u, serial);
            EmailConfirmation.sendConfirmationEmail(u.getEmail(), serial);
        }
        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "registerHost", method = RequestMethod.GET)
    public String insertHost(ModelMap mm) {
        Users u = new Users();
        mm.addAttribute("user", u);
        return "registerHost";
    }
    
    @RequestMapping(value = "doRegisterHost", method = RequestMethod.POST)
    public String doRegisterHost(ModelMap mm, @ModelAttribute("user") @Valid Users u, BindingResult br) {
        usersValidator.validate(u, br);
        if (br.hasErrors()) {
            return "registerHost";
        } else {
            String serial = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt(12));
            usersService.insertHost(u);
            u=usersService.findById(u);
            activationService.insertActivation(u, serial);
            EmailConfirmation.sendConfirmationEmail(u.getEmail(), serial);
        }
        return "redirect:/welcome";
    }
    
   @GetMapping("activation/{serial}")
    public String activation(ModelMap mm, @PathVariable("serial") String serial){
        boolean success=false;
        success=activationService.activateUser(serial);
        if (success) {
            return "success";
        }else
            return "fail";
    }
}
