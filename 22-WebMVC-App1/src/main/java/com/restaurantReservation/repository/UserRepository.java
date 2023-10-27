package com.restaurantReservation.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.restaurantReservation.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
