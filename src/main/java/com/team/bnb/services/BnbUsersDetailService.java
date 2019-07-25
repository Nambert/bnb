/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.BnbUserDetails;
import com.team.bnb.model.Users;
import com.team.bnb.repositories.UsersRepository;
import java.util.Optional;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

/**
 *
 * @author Haris
 */
@Component
public class BnbUsersDetailService implements UserDetailsService{
    
    @Autowired
    private UsersRepository userRepo;
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       Optional<Users> user=userRepo.findByUsername(username);
       
       user.orElseThrow(()->new UsernameNotFoundException("Username not found"));
       
       return user.map(BnbUserDetails::new).get();
    }
    
}
