/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;


import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Haris
 */
@RequestMapping("/rest/whatever")
@RestController
public class whatever {
    @PreAuthorize("hasAnyRole('ADMIN')")
    @GetMapping("/secured/all")
    public String secured(){
    return "welcome";}
}
