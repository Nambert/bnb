/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Users;
import com.team.bnb.repositories.ClientsRepository;
import com.team.bnb.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class UsersService {

    @Autowired
    UsersRepository usersRepository;
    @Autowired
    ClientsRepository clientsRepository;

    public void insert(Users u) {
        u.setBalance(5000);
        String encodedPassword = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt());
        u.setPassword(encodedPassword);
        usersRepository.save(u);
        clientsRepository.insertToUserRole(u.getId(), 2);
    }
}
