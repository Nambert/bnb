/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.repositories;

import com.team.bnb.model.Reservations;
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
public interface ReservationsRepository extends JpaRepository<Reservations, Integer>{
    @Query(value = "select * from reservations where client_id=:client_id", nativeQuery = true)
    List<Reservations> findByOwnerId(@Param("client_id") int client_id);
}
