/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Reservations;
import com.team.bnb.model.Storages;
import com.team.bnb.repositories.ReservationsRepository;
import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Kosta
 */
@Service
public class ReservationsService {

    @Autowired
    ReservationsRepository reservationsRepository;

    public void insertReservation(Reservations reservations) {
        reservationsRepository.save(reservations);
    }

     public List<Reservations> viewReservationsByOwner(int owner_id) {
        List<Reservations> reservations = reservationsRepository.findByOwnerId(owner_id);
        return reservations;
    }

    public void deleteById(int id) {
        reservationsRepository.deleteById(id);
    }
}
