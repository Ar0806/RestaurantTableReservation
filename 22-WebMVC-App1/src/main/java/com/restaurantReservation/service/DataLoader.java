package com.restaurantReservation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import com.restaurantReservation.model.User;
import com.restaurantReservation.repository.UserRepository;

@Component
public class DataLoader implements CommandLineRunner {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

  

    @Override
    public void run(String... args) {
        // Insert sample user data into the H2 database
        User user1 = new User();
        user1.setUsername("user1");
        // Your registration or user creation code
        String rawPassword = "password1";
        String encodedPassword = passwordEncoder.encode(rawPassword);
        user1.setPassword(encodedPassword);

        User user2 = new User();
        user2.setUsername("user2");
        String rawPassword1 = "password2";
        String encodedPassword1 = passwordEncoder.encode(rawPassword1);
        user2.setPassword(encodedPassword1);

        userRepository.save(user1);
        userRepository.save(user2);
    }
}

