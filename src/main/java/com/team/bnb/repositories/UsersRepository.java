/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.repositories;

import com.team.bnb.model.Users;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Haris
 */
@Repository
public interface UsersRepository extends JpaRepository<Users,Integer>{
    
    Optional<Users> findByUsername(String username);
    
    @Transactional
    @Modifying
    @Query(value = "insert into user_role (user_id, role_id) values(:user_id, :role_id)", nativeQuery = true)
    public void insertToUserRole(@Param("user_id") int user_id, @Param("role_id") int role_id);
    
    @Transactional
    @Modifying
    @Query(value = "update users set active=1 where id=:id", nativeQuery = true)
    public void activateUser(@Param("id") int id);
}
