package com.restaurantReservation.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import com.restaurantReservation.model.ReservationTable;
import com.restaurantReservation.repository.TableRepository;
import com.restaurantReservation.repository.UserRepository;

public class ReservationServiceImpl {
	
	  @Autowired
	    private TableRepository tableRepository;

	public List<ReservationTable> findAvailableTables(int guests) {
	    List<ReservationTable> availableTables = new ArrayList<>();

	    // Query for available single tables
	    List<ReservationTable> singleTables = tableRepository.findByCapacity(guests);
	    availableTables.addAll(singleTables);

	    // If single tables are not sufficient, check for table combinations
	    if (availableTables.isEmpty()) {
	        List<ReservationTable> combinations = findTableCombinations(guests);
	        availableTables.addAll(combinations);
	    }

	    return availableTables;
	}

	public List<ReservationTable> findTableCombinations(int guests) {
	    List<ReservationTable> combinations = new ArrayList<>();

	    // Iterate through available tables to find combinations
	    for (int i = 2; i <= guests / 2; i++) {
	        int j = guests - i;
	        List<ReservationTable> combination = tableRepository.findByCapacityIn(Arrays.asList(i, j));
	        if (combination.size() == 2) {
	            // Reserve both tables
	            combination.get(0).setCombined(true);
	            combination.get(1).setCombined(true);
	            tableRepository.saveAll(combination);
	            combinations.add(combination.get(0));
	            combinations.add(combination.get(1));
	            break;  // Exit loop once a combination is found
	        }
	    }

	    return combinations;
	}

}
