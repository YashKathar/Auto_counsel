package com.autoCounsel.auto_counsel.controller;

import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.service.AuthenticationService;


import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/auth")
@CrossOrigin(origins = "*")
public class AuthenticationController {

    @Autowired
    public AuthenticationService authenticationService;

    @PostMapping(value = "/register")
    public String registerUser(@ModelAttribute User user) {
        if ( authenticationService.registerUser(user) != null) {
            return "index";
        }
        return "redirect:/";
    }

    // @PostMapping(value = "/login")
    // @ResponseBody
    // public ResponseEntity<Map<String, String>> loginUser(@RequestBody User user, HttpSession session) {
    //     User loginUser = authenticationService.loginUser(user);
    //     session.setAttribute("user", loginUser);
    //     Map<String, String> response = new HashMap<>();
    //     response.put("redirect", loginUser.getRole().equalsIgnoreCase("owner") ? "/auth/dashboard" : "/auth/dashboard");
    //     return ResponseEntity.ok(response);
    // }


@PostMapping(value = "/login")
@ResponseBody
public ResponseEntity<Map<String, String>> loginUser(@RequestBody User user, HttpSession session) {
    User loginUser = authenticationService.loginUser(user);
    
    if (loginUser == null) {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(Map.of("error", "Invalid credentials"));
    }

    // Store the full User object in the session
    session.setAttribute("user", loginUser);

    Map<String, String> response = new HashMap<>();
    response.put("redirect", loginUser.getRole().equalsIgnoreCase("owner") ? "/auth/dashboard" : "/auth/dashboard");
    return ResponseEntity.ok(response);
}


    @GetMapping(value = "/dashboard")
    public String dashBorPage(Model model){
    	model.addAttribute("fuelType", FuelType.values());
        return "dashbord";
    }
    
    @GetMapping(value = "/register")
    public String page(){
        return "register";
    }
}
