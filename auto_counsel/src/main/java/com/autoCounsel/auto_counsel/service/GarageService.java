package com.autoCounsel.auto_counsel.service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import javax.lang.model.element.Element;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.GarageRepo;
import com.autoCounsel.auto_counsel.dao.ServicesRepo;
import com.autoCounsel.auto_counsel.dto.GarageDto;
import com.autoCounsel.auto_counsel.entity.Garage;
import com.autoCounsel.auto_counsel.entity.Services;

import jakarta.persistence.EntityNotFoundException;

@Service
public class GarageService {
	
	@Autowired
	private GarageRepo garageRepo;
	
	@Autowired
	private ServicesRepo servicesRepo;
	
	@Autowired
	private ModelMapper modelMapper;
	
	public Garage addGarage(GarageDto garageDto, List<String> servicesNames) throws EntityNotFoundException {
		Garage garage = new Garage();
		garage.setGarageName(garageDto.getGarageName());
		garage.setGarageAddress(garageDto.getGarageAddress());
		garage.setGaragePhone(garageDto.getGaragePhone());
		
		List<Services> listOfServices = servicesNames.stream().map(service -> {
			Services services = servicesRepo.findByServiceName(service).orElseThrow(() ->  new EntityNotFoundException("service with name :"+service+" is not found"));
			List<Garage> garages = new ArrayList<>();
			garages.add(garage);
			services.setGarages(garages);
			return servicesRepo.save(services);
			
		}).collect(Collectors.toList());
		
		garage.setServices(listOfServices);
		
		return garageRepo.save(garage);
	}
	
	
	public List<Garage> getGarages() {
		return garageRepo.findAll();
	}
	
	public List<Services> getAllServices(){
		return servicesRepo.findAll();
	}
}
