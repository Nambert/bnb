/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.repositories;

import com.team.bnb.model.Activation;
import com.team.bnb.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Kosta
 */
@Repository
public interface ActivationRepository extends JpaRepository<Activation,Integer>{
    
    
    @Query(value="select user_id from activation where serial=:serial",nativeQuery = true)
    List<Users> findBySerial(@Param("serial") String serial);
}
