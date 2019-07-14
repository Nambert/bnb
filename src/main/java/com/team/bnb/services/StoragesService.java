
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Storages;
import com.team.bnb.repositories.StoragesRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class StoragesService {

    @Autowired
    StoragesRepository sr;

     public void insert(Storages s) {
        sr.save(s);
    }
    
    public List<Storages> viewAllStorages() {
        List<Storages> result = sr.findAll();
      
        return result;
    }
}
