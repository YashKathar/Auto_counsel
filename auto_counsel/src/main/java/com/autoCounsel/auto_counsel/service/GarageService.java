package com.autoCounsel.auto_counsel.service;

import java.util.LinkedList;
import java.util.List;

import javax.lang.model.element.Element;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.GarageRepo;
import com.autoCounsel.auto_counsel.entity.Garage;

@Service
public class GarageService {
	
	@Autowired
	private GarageRepo garageRepo;
	
	public void addGarage(Garage garage) {
		garageRepo.save(garage);
	}
	
	
	public List<Garage> getGarages() {
		return garageRepo.findAll();
	}
}
