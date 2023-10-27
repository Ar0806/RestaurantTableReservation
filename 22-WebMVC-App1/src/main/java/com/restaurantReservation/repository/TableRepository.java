package com.restaurantReservation.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.restaurantReservation.model.ReservationTable;

import java.util.List;

@Repository
public interface TableRepository extends JpaRepository<ReservationTable, Long> {
	
	List<ReservationTable> findAllBy();
    List<ReservationTable> findByCapacity(int capacity);
    
    List<ReservationTable> findByCapacityIn(List<Integer> capacities);
}
