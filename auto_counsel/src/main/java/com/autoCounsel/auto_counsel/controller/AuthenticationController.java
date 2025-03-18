package com.autoCounsel.auto_counsel.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.service.AuthenticationService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes({"isAdmin", "userExist"})
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
public ResponseEntity<Map<String, String>> loginUser(@RequestBody User user, HttpSession session, Model model) {
    User loginUser = authenticationService.loginUser(user);
    
    if (loginUser == null) {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(Map.of("error", "Invalid credentials"));
    }

    // Store the full User object in the session
    session.setAttribute("user", loginUser); 
    

    Map<String, String> response = new HashMap<>();
    response.put("redirect", loginUser.getRole().toString().equals("ROLE_ADMIN") ? "/auth/dashboard" : "/auth/dashboard");
    return ResponseEntity.ok(response);
}
 

    @GetMapping(value = "/dashboard")
    public String dashBorPage(Model model,	HttpSession session){
    	User loggedInUser = (User) session.getAttribute("user");
    	if(loggedInUser != null && loggedInUser.getRole().toString().equals("ROLE_ADMIN")) {
    		model.addAttribute("isAdmin", true);
    		model.addAttribute("userExist", true);
    	}
    	else {
    		model.addAttribute("isAdmin", false);
    		model.addAttribute("userExist", false);
    	}
    		
    	
    	model.addAttribute("fuelType", FuelType.values());
        return "dashbord";
    }
    
    @GetMapping("/logout")  
    public String logOut(HttpSession session) {
    	session.invalidate();
    	return "redirect:/auth/dashboard";
    }
    
    @GetMapping(value = "/register")
    public String page(){
        return "register";
    }
}
