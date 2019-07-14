/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;

import com.team.bnb.model.Cities;
import com.team.bnb.model.Storages;
import com.team.bnb.model.Users;
import com.team.bnb.repositories.UsersRepository;
import com.team.bnb.services.CitiesService;
import com.team.bnb.services.StoragesService;
import com.team.bnb.services.TestService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Kosta
 */
@Controller
public class HostController {
    
    @Autowired
    CitiesService citiesService;
    
    @Autowired
    StoragesService storagesService;
    
    
    @RequestMapping(value = "insertCity", method = RequestMethod.GET)
    public String insertCity(ModelMap mm) {
        Cities c = new Cities();
        mm.addAttribute("city", c);
        return "insertCity";
    }

    @RequestMapping(value = "doInsertCity", method = RequestMethod.POST)
    public String doInsertCity(ModelMap mm, @ModelAttribute("city") @Valid Cities c) {
        citiesService.insert(c);
        return "insertCity";
    }
    
    @RequestMapping(value = "viewCities", method = RequestMethod.GET)
    public String viewAllCities (ModelMap mm) {
        List<Cities> list = citiesService.viewAllCities();
        mm.addAttribute("list", list);
        return "viewCities";
    }
    
    
    
    @RequestMapping(value = "createStorage", method = RequestMethod.GET)
    public String createStorage(ModelMap mm) {
        Storages s = new Storages();
        mm.addAttribute("storage", s);
        mm.addAttribute("list", citiesService.viewAllCities());
        return "createStorage";
    }

    @RequestMapping(value = "doCreateStorage", method = RequestMethod.POST)
    public String doCreateStorage(ModelMap mm, @ModelAttribute("storage") @Valid Storages s) {
        storagesService.insert(s);
        return "createStorage";
    }
    
}
