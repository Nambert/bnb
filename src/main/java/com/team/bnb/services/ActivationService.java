/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Activation;
import com.team.bnb.model.Users;
import com.team.bnb.repositories.ActivationRepository;
import com.team.bnb.repositories.UsersRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class ActivationService {

    @Autowired
    ActivationRepository activationRepository;
    
    @Autowired
    UsersService usersService;

    public void insertActivation(Users u, String string) {
        Activation activation = new Activation();
        activation.setUserId(u);
        activation.setSerial(string);
        activationRepository.save(activation);
    }

    public boolean activateUser(String serial) {
        List<Users> users = activationRepository.findBySerial(serial);
        if (users.isEmpty()) {
            return false;
        } else {
            usersService.activateUser(users.get(0));
            return true;
        }
    }
}
