package com.autoCounsel.auto_counsel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.service.GarageService;

@Controller
@RequestMapping("/garage")
public class GarageController {
	
	@Autowired
	private GarageService garageService;
	
	
	@GetMapping("/add")
	public String showAddGarageForm(ModelMap model) {
		model.addAttribute("garage", new Garage());
		return "add-garage";
	}
	
	@PostMapping("/add")
	public String addGarageForm(ModelMap model, Garage garage, BindingResult result) {
		
		if(result.hasErrors()) {
			return "redirect:/garage/add";
		}
		
		garageService.addGarage(garage);
		return "redirect:/garage/add";
	}
	
}
