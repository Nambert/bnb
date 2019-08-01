/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team.bnb.services;

import com.team.bnb.model.Reservations;
import com.team.bnb.repositories.ReservationsRepository;
import java.util.Calendar;
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

    public Calendar calculateEndDate(Calendar calendar, int hours) {
        calendar.add(Calendar.HOUR_OF_DAY, hours);
        return calendar;
    }
}
