package com.cognizant.fraudmanagementsystem.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.cognizant.fraudmanagementsystem.model.User;
import com.cognizant.fraudmanagementsystem.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    
    private UserRepository userRepository;
    private List<User> users = new ArrayList<>();

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
        users = this.userRepository.findAll();
    }

    public Optional<User> isValid(String userId, String password) {
        return users.stream()
                    .filter(user-> 
                        user.getUserId().equals(userId) && 
                        user.getPassword().equals(password)
                    ).findAny();
    }

    public boolean addUser(User user) {
        try {
            userRepository.save(user);
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}
