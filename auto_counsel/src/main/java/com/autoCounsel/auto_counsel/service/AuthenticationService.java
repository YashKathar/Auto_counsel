package com.autoCounsel.auto_counsel.service;

import com.autoCounsel.auto_counsel.dao.UserRepo;
import com.autoCounsel.auto_counsel.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    @Autowired
    private UserRepo userRepo;

    public User registerUser(User user) {

        try {
            return userRepo.save(user);

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public User loginUser(User user) {
        try {
            return userRepo.findByUserNameAndPassword(user.getUserName(), user.getPassword()).orElseThrow(() -> new RuntimeException("username and password does not match"));

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

