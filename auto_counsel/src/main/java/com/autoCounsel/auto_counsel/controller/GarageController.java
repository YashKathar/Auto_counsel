package com.autoCounsel.auto_counsel.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.autoCounsel.auto_counsel.dao.GarageRepo;
import com.autoCounsel.auto_counsel.dao.ServicesRepo;
import com.autoCounsel.auto_counsel.dto.GarageDto;
import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.entity.Services;
import com.autoCounsel.auto_counsel.service.GarageService;

@Controller
@SessionAttributes("isAdmin")
@RequestMapping("/garage")
public class GarageController {
	
	@Autowired
	private GarageService garageService;
	
	
	@GetMapping("/add")
	public String showAddGarageForm(Model model) {
		model.addAttribute("garage", new GarageDto());
		model.addAttribute("services", garageService.getAllServices());
		return "add-garage";
	}
	
	@PostMapping("/add")
	public String addGarageForm(GarageDto garage, BindingResult result) {

		if(result.hasErrors()) {
			return "redirect:/garage/add";
		}
		System.out.println(garage);
		String s = garage.getServices();
		s = s.substring(0, s.length()-1);
		List<String> serviceList = Arrays.stream(s.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
		System.out.println(serviceList);
		garageService.addGarage(garage, serviceList);
		return "redirect:/garage/add";
	}
	
//	
	
	@Autowired
	ServicesRepo servicesRepo;
	
	@Autowired
	GarageRepo garageRepo;
	
	@GetMapping("/testing")
	public String helper() {
		Services service = new Services();
		service.setServiceName("Hello");
		List<Garage> list = new ArrayList<>();
		Garage garage = new Garage();
		garage.setGarageName("Mukesh");
		garage.setGarageAddress("Pune");
		garage.setGaragePhone("92929292");
		Garage saved = garageRepo.save(garage);
		list.add(saved);
		service.setGarages(list);
		servicesRepo.save(service);
		return "/";
	}
	
//	
	
}
