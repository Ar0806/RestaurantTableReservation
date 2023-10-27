package com.restaurantReservation.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.restaurantReservation.model.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    // Add custom query methods if needed
}
