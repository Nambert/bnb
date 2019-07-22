/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.repositories.StoragesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Haris
 */
@Service
public class ClientService {

    @Autowired
    StoragesRepository storagesRepository;
    
    
}
