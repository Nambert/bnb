/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.validators;

import com.team.bnb.model.Users;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


/**
 *
 * @author Kosta
 */
@Component
public class UsersValidator implements Validator{

    @Override
    public boolean supports(Class<?> user) {
     return Users.class.equals(user);  
    }

    @Override
    public void validate(Object target, Errors errors) {
    
     Users test = (Users) target;
      if(test.getFirstname().isEmpty()){
          errors.rejectValue("firstname", "name.empty");
      }
      if(test.getLastname().isEmpty()){
          errors.rejectValue("lastname", "name.empty");
      }
      if(test.getUsername().isEmpty()){
          errors.rejectValue("username", "name.empty");
      }
      if(test.getPassword().isEmpty()){
          errors.rejectValue("password", "name.empty");
      }
      if(test.getPassword().length()<7){
          errors.rejectValue("password", "pass.short");
      }
      if(test.getEmail().isEmpty()){
          errors.rejectValue("email", "name.empty");
      }
    }

    
    
}
