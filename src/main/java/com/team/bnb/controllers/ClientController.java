
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.controllers;

import com.team.bnb.model.BnbUserDetails;
import com.team.bnb.model.Reservations;
import com.team.bnb.model.Users;
import com.team.bnb.repositories.StoragesRepository;
import com.team.bnb.services.BnbUsersDetailService;
import com.team.bnb.services.ReservationsService;
import com.team.bnb.services.StoragesService;
import com.team.bnb.utils.DateParsing;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.apache.tomcat.jni.User.username;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

/**
 *
 * @author Haris
 */
@Controller
@RequestMapping("/client")
public class ClientController {

    @Autowired
    StoragesService storagesService;

    @Autowired
    BnbUsersDetailService bnbUsersDetailService;

    @Autowired
    ReservationsService reservationsService;

    @Autowired
    DateParsing dateParsing;

    @RequestMapping(value = "/{cityId}", method = RequestMethod.GET)
    public String chooseCity(ModelMap mm, @PathVariable(name = "cityId") int city_id) {
        mm.addAttribute("storages", storagesService.viewStoragesByCity(city_id));
        Reservations reservation = new Reservations();
        mm.addAttribute("reservation", reservation);
        return "reservation";
    }

    @RequestMapping("/loadClient")
    public String loadClient() {

        return "client";
    }

    @RequestMapping(value = "/reserveSlot", method = RequestMethod.POST)
    public String reserveSlot(ModelMap mm, WebRequest request, @ModelAttribute("reservation") Reservations reservation) {

        String date = request.getParameter("date") + " " + request.getParameter("timepicker") + ":00";
       Calendar start= dateParsing.parseString(date);
      reservation.setStart(start);
      
       Calendar end=reservationsService.calculateEndDate(start, 5);
       reservation.setEnd(end);
      reservation.setAmount(2);
      reservation.setCost(30.0);
      reservationsService.insertReservation(reservation);
      
        return "client";
    }
}
