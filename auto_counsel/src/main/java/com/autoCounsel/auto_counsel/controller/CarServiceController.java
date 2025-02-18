package com.autoCounsel.auto_counsel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.autoCounsel.auto_counsel.entity.CarServicing;
import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.service.CarServicingService;
import com.autoCounsel.auto_counsel.service.GarageService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/carsService")
public class CarServiceController {

    @Autowired
    private CarServicingService carServicingService;
    
    @Autowired
    private GarageService garageService;

    @GetMapping("/book-service")
    public String showBookingForm(Model model) {
    	List<Garage> garages = garageService.getGarages();
    	model.addAttribute("garages", garages);
        return "book-service"; 
    }

    @PostMapping("/book")
    public String bookCarService(@ModelAttribute CarServicing carServicing, RedirectAttributes redirectAttributes,HttpSession session) {
        try {      
            
            User loggedInUser = (User) session.getAttribute("user");

            carServicing.setStatus("Confirmed");
            carServicing.setUser(loggedInUser);

            // Book the service and save it
            carServicingService.bookCarService(carServicing);

            // Add flash attributes to display in the success message
            redirectAttributes.addFlashAttribute("message", "Your car servicing booking is confirmed!");
            redirectAttributes.addFlashAttribute("carModel", carServicing.getCarModel());
            redirectAttributes.addFlashAttribute("carName", carServicing.getCarName());
            redirectAttributes.addFlashAttribute("serviceType", carServicing.getServiceType());
            redirectAttributes.addFlashAttribute("appointmentDate", carServicing.getAppointmentDate());
            redirectAttributes.addFlashAttribute("garage", carServicing.getGarage().getGarageName());

            // Redirect to the confirmation page
            return "redirect:/carsService/booking-confirmation";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to book car service: " + e.getMessage());
            return "redirect:/carsService/book-service";
        }
    }

    @GetMapping("/booking-confirmation")
    public String showConfirmationPage(Model model) {
        // This page will use the flash attributes to show the confirmation message
    	System.out.print(model);
        return "booking-confirmation";
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
