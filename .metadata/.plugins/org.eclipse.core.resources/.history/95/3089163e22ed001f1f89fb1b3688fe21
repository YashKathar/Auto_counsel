package com.autoCounsel.auto_counsel.controller;

import com.autoCounsel.auto_counsel.dto.CarDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.service.SellCarService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.autoCounsel.auto_counsel.entity.User;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/cars")
public class CarController {

    @Autowired
    private SellCarService sellCarService;

//    @PostMapping("/save")
//     public String save(@ModelAttribute CarDto car, Model model) {
//         Car addedCar = sellCarService.addCar(new Car());
//         if (addedCar != null) {
//             model.addAttribute("msg", "Car Added successfully");
//         } else {
//             model.addAttribute("msg", "Unable to add Car");
//         }
//         return "sellCar";
//     }

    @GetMapping("/sellCar")
    public String getList(@ModelAttribute Car car, Model model) {
        return "sellCar";
    }


    @PostMapping("/sell")
    public String sellCar(@ModelAttribute SellCar sellCar, RedirectAttributes redirectAttributes, HttpSession session) {
    try {      
        User loggedInUser = (User) session.getAttribute("user");

        sellCar.setUser(loggedInUser);

        sellCarService.saveSellCar(sellCar);

        redirectAttributes.addFlashAttribute("message", "Your car has been listed for sale successfully!");
        redirectAttributes.addFlashAttribute("carModel", sellCar.getCarModel());
        redirectAttributes.addFlashAttribute("carName", sellCar.getCarName());
        redirectAttributes.addFlashAttribute("year", sellCar.getYear());
        redirectAttributes.addFlashAttribute("price", sellCar.getPrice());

        return "carSell-confirmation";
       } catch (Exception e) {
        redirectAttributes.addFlashAttribute("errorMessage", "Failed to list the car for sale: " + e.getMessage());
        return "redirect:/cars/sellCar";
    }
}


@GetMapping("/buyCar")
public String getList( Model model) {
    return "buyCar";
}




     
}
