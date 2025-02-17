package com.autoCounsel.auto_counsel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping(value = "/")
    public String indexPage(){
        return "login";
    }

    @GetMapping(value = "/login")
    public String loginPage(){
        return  "login";
    }

    @GetMapping(value = "/register")
    public String registerPage(){
        return  "register";
    }

    @GetMapping("/carParts")
    public String carPartsPage(){
        return "carParts";
    }
}
