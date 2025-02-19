package com.autoCounsel.auto_counsel.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.autoCounsel.auto_counsel.dto.SellCarDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.service.SellCarService;

import jakarta.servlet.http.HttpSession;

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
    	model.addAttribute("fuelType", FuelType.values());
        return "sellCar";
    }


    @PostMapping("/sell")
    public String sellCar(@ModelAttribute SellCarDto sellCarDto, RedirectAttributes redirectAttributes, HttpSession session, Model model) {
    try {      
        User loggedInUser = (User) session.getAttribute("user");

        sellCarDto.setUser(loggedInUser);

        SellCar saveSellCar = sellCarService.saveSellCar(sellCarDto);
        
        if(saveSellCar == null) {
        	return "redirect:/cars/sellCar";
        }
        
        

        redirectAttributes.addFlashAttribute("message", "Your car has been listed for sale successfully!");
        redirectAttributes.addFlashAttribute("carModel", saveSellCar.getCarModel());
        redirectAttributes.addFlashAttribute("carName", saveSellCar.getCarName());
        redirectAttributes.addFlashAttribute("year", saveSellCar.getYear());
        redirectAttributes.addFlashAttribute("price", saveSellCar.getPrice());
        
        File file = new File(saveSellCar.getCarImage());
        if(file.exists()) {
        	byte[] bytesCarImage = Files.readAllBytes(file.toPath());
        	String encodeToString = Base64.getEncoder().encodeToString(bytesCarImage);
        	model.addAttribute("resource", encodeToString);        	
        }

        model.addAttribute("sellCar",saveSellCar);
        model.addAttribute("message","Your car has been listed for sale successfully!");
        return "carSell-confirmation";
        
       } catch (Exception e) {
        redirectAttributes.addFlashAttribute("errorMessage", "Failed to list the car for sale: " + e.getMessage());
        return "redirect:/cars/sellCar";
    }
}


@GetMapping("/buyCar")
public String getList( Model model) {
	model.addAttribute("carName", "Enter car name");
	model.addAttribute("carModel", "Enter car model");
	model.addAttribute("fuelType", "Choose..");
    return "buyCar";
}

@PostMapping("/buyCar")
public String getListOfCars(Model model, String carName, String carModel, String fuelType) {
	if(fuelType.length() == 0) {
		fuelType = "Choose..";
	}
	model.addAttribute("carName", carName);
	model.addAttribute("carModel", carModel);
	model.addAttribute("fuelType", fuelType);
	List<SellCar> carList = sellCarService.getOnSellCarByNameAndModel(carName, carModel);
	model.addAttribute("carList", carList);
    return "buyCar";
}


     
}
