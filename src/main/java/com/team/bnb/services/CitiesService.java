/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Cities;
import com.team.bnb.repositories.CitiesRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class CitiesService {

    @Autowired
    CitiesRepository cr;

     public void insert(Cities c) {
        cr.save(c);
    }
    
    public List<Cities> viewAllCities() {
        List<Cities> result = cr.findAll();
      
        return result;
    }
}
