/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.repositories;

import com.team.bnb.model.Storages;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Kosta
 */
@Repository
public interface StoragesRepository extends JpaRepository<Storages,Integer>{
    
    @Query(value="select * from storages where city_id=:city_id",nativeQuery = true)
    List<Storages> findBycityId(@Param("city_id")int city_id);
}
