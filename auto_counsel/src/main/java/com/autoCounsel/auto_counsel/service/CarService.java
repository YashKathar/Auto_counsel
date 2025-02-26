package com.autoCounsel.auto_counsel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.CarRepo;
import com.autoCounsel.auto_counsel.dto.FilterCarPagebleDto;
import com.autoCounsel.auto_counsel.dto.SearchCarDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class CarService {
	
	@Autowired
	private CarRepo carRepo;
	
	   public FilterCarPagebleDto getSearchedCar(SearchCarDto searchCarDto, Integer pageNumber, Integer pageSize) {
		  Pageable pageable = PageRequest.of(pageNumber, pageSize);
	    	if(searchCarDto.getFuelType() == null) {
	    		Page<Car> filterCarsExceptFueltype = carRepo.filterCarsExceptFueltype(searchCarDto.getCarName(), searchCarDto.getCarModel(), pageable);
	    		return new FilterCarPagebleDto(filterCarsExceptFueltype.getContent(), filterCarsExceptFueltype.getTotalPages());
	    	}
	    	else {
	    		Page<Car> filterCars = carRepo.filterCars(searchCarDto.getCarName(), searchCarDto.getCarModel(), searchCarDto.getFuelType(), pageable);
	    		return new FilterCarPagebleDto(filterCars.getContent(), filterCars.getTotalPages());
	    	}
	    }
}
