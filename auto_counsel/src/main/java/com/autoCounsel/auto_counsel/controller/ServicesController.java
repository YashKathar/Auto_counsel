package com.autoCounsel.auto_counsel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.autoCounsel.auto_counsel.entity.Services;
import com.autoCounsel.auto_counsel.service.ServicesService;

@Controller
@RequestMapping("/services")
@CrossOrigin(origins = "*")
@SessionAttributes({"isAdmin", "userExist"})
public class ServicesController {
	@Autowired
	private ServicesService servicesService;
	
	@GetMapping("/add-service")
	public String addService() {
		return "add_Service";
	}
	
	@PostMapping("/add-service")
	public String addService(@ModelAttribute Services service) {
		Services services = servicesService.add(service);
		return "add_Service";
	}
}
