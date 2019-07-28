/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.utils;

import com.team.bnb.controllers.ClientController;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Component;

/**
 *
 * @author Kosta
 */
@Component
public class DateParsing {

    public Calendar parseString(String string) {
        SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
        Calendar cal = Calendar.getInstance();
        
        try {
            Date date = formatter.parse(string);
            cal.setTime(date);
        } catch (ParseException ex) {
            Logger.getLogger(ClientController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cal;
    }
    
    

}
