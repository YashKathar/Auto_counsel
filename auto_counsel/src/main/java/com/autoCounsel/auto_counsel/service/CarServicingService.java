package com.autoCounsel.auto_counsel.service;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.CarServicingRepo;
import com.autoCounsel.auto_counsel.dao.GarageRepo;
import com.autoCounsel.auto_counsel.dao.ServicesRepo;
import com.autoCounsel.auto_counsel.dto.CarServicingDto;
import com.autoCounsel.auto_counsel.entity.CarServicing;
import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.entity.Services;
import com.autoCounsel.auto_counsel.entity.User;

import jakarta.persistence.EntityNotFoundException;

@Service
public class CarServicingService {

    @Autowired
    private CarServicingRepo carServicingRepo;
    
    @Autowired
    private ServicesRepo servicesRepo;
    
    @Autowired
    private GarageRepo garageRepo;

    public CarServicing bookCarService(CarServicingDto carServicing, User user) {
        String s = carServicing.getServices();
		s = s.substring(0, s.length()-1);
		List<String> servicesNames = Arrays.stream(s.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
		
		List<Services> services = servicesNames.stream().map(service -> {
			return servicesRepo.findByServiceName(service).orElseThrow(() ->  new EntityNotFoundException("service with name :"+service+" is not found"));
		}).collect(Collectors.toList());
		
		CarServicing carService = new CarServicing();
		
		carService.setUser(user);
		
		carService.setServices(services);
		
		
		Garage garage = garageRepo.findById(carServicing.getGarage()).orElseThrow();
		carService.setGarage(garage);
		
		carService.setCarName(carServicing.getCarName());
		carService.setCarModel(carServicing.getCarModel());
		carService.setAppointmentDate(carServicing.getAppointmentDate());
		
		try {
			carServicingRepo.save(carService);
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}  
		return carService;
    }

    public List<CarServicing> findByUser(User loggedInUser) {
        return carServicingRepo.findByUser(loggedInUser);
    }
    
}
