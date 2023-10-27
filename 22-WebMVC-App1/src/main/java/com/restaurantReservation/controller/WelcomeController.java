package com.restaurantReservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.restaurantReservation.model.ReservationTable;
import com.restaurantReservation.repository.TableRepository;

@Controller
public class WelcomeController {
	
	@Autowired
    private TableRepository tableRepository;

	@GetMapping("/reservation")
	public ModelAndView getWelcomeMsg() {
		

		ModelAndView mav = new ModelAndView();
		mav.setViewName("restaurantweb");
		List<ReservationTable> availableTables = tableRepository.findAll();

        // Add the available tables to the model to display in the JSP page
		mav.addObject("availableTables", availableTables);

		return mav;
	}
	@GetMapping("/register")
	public ModelAndView getRegister() {

		ModelAndView mav = new ModelAndView();

		//mav.addObject("msg", "Welcome to Ashok IT...!!");
		
		mav.setViewName("registerweb");

		return mav;
	}
	
	@GetMapping("/login")
	public ModelAndView getSignin() {

		ModelAndView mav = new ModelAndView();

		//mav.addObject("msg", "Welcome to Ashok IT...!!");
		
		mav.setViewName("signinweb");

		return mav;
	}
	
	
	@PostMapping("/reserve")
	public ModelAndView reserveTable() {
		ModelAndView mav = new ModelAndView();

		//mav.addObject("msg", "Welcome to Ashok IT...!!");
		
		mav.setViewName("payment");
	    return mav; // Return a success page
	}
	
	@PostMapping("/success")
	public ModelAndView successPagge() {
		ModelAndView mav = new ModelAndView();

		//mav.addObject("msg", "Welcome to Ashok IT...!!");
		
		mav.setViewName("success");
	    return mav; // Return a success page
	}

}
