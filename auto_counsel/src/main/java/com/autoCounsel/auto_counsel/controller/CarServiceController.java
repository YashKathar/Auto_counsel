package com.autoCounsel.auto_counsel.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.autoCounsel.auto_counsel.dto.CarServicingDto;
import com.autoCounsel.auto_counsel.entity.CarServicing;
import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.entity.Services;
import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.service.CarServicingService;
import com.autoCounsel.auto_counsel.service.GarageService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes({"isAdmin", "userExist"}) 
@RequestMapping("/carsService")
public class CarServiceController {

    @Autowired
    private CarServicingService carServicingService;
    
    @Autowired
    private GarageService garageService;

    @GetMapping("/book-service")
    public String showBookingForm(@RequestParam(value = "garage", required = false) Integer garage, Model model) {
    	List<Garage> garages = garageService.getGarages(); 
    	model.addAttribute("garages", garages);
    	if(garage == null || garage == 0) {
    		return "select-garage";
    	}
    	List<Services> serviceList = new ArrayList<>();
    	for(Garage g : garages) {
    		if(g.getId() == garage) {
    			serviceList = g.getServices();
    		}
    	}
    	model.addAttribute("services", serviceList);
    	model.addAttribute("carService", new CarServicingDto());
    	model.addAttribute("garage", garage);
        return "book-service"; 
    }

    @PostMapping("/book")
    public String bookCarService(@ModelAttribute CarServicingDto carServicing, RedirectAttributes redirectAttributes,HttpSession session, Model model) {
        try {       
            
            User loggedInUser = (User) session.getAttribute("user");
            
            if(loggedInUser == null) {
            	return "redirect:/";  
            }
            
            carServicing.setUserId(loggedInUser.getId());
            
//            System.out.println(carServicing);
            
            CarServicing car = carServicingService.bookCarService(carServicing, loggedInUser);
       
            model.addAttribute("car", car); 
            return "booking-confirmation";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to book car service: " + e.getMessage());
            return "redirect:/carsService/book-service";
        } 
    }



    @GetMapping("/view")
    public String viewPreviousServices(HttpSession session, Model model) {
        User loggedInUser = (User) session.getAttribute("user");

        if (loggedInUser == null) {
            return "redirect:/login";  // Redirect to login if user not found
        }

        List<CarServicing> previousServices = carServicingService.findByUser(loggedInUser);
        model.addAttribute("previousServices", previousServices);

        return "service-history"; // This should match the JSP file name
    }




}
