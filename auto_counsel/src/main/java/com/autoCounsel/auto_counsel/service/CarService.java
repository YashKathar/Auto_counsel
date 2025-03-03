package com.autoCounsel.auto_counsel.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.CarRepo;
import com.autoCounsel.auto_counsel.dto.FilterCarPagebleDto;
import com.autoCounsel.auto_counsel.dto.SearchCarDto;
import com.autoCounsel.auto_counsel.dto.SearchedCarResponseDto;
import com.autoCounsel.auto_counsel.dto.SortResponseDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class CarService {
	 
	@Autowired
	private CarRepo carRepo;
	
	@Autowired
	private ModelMapper modelMapper;
	
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

	public SortResponseDto sortCarsByAvailability(String sortString, Integer pageNumber, Integer pageSize) {
		Boolean check;
		if(sortString.equals("UNBOOKED")) {
			check = false;
			Pageable pageble = PageRequest.of(pageNumber, pageSize);
			Page<Car> sortPage = carRepo.findByIsBooked(check, pageble);
			FilterCarPagebleDto filterCarPagebleDto = new FilterCarPagebleDto(sortPage.getContent(), sortPage.getTotalPages());
			return new SortResponseDto( getListOfSortDtos(filterCarPagebleDto), sortPage.getTotalPages());
			
		}else {
			check = true;
			Pageable pageble = PageRequest.of(pageNumber, 6);
			Page<Car> sortPage = carRepo.findByIsBooked(check, pageble);
			FilterCarPagebleDto filterCarPagebleDto = new FilterCarPagebleDto(sortPage.getContent(), sortPage.getTotalPages());
			return new SortResponseDto( getListOfSortDtos(filterCarPagebleDto), sortPage.getTotalPages());
		}
	}
	
	
	private List<SearchedCarResponseDto> getListOfSortDtos(FilterCarPagebleDto filterCarPagebleDto) {
		 List<SearchedCarResponseDto> listSearchedCarResponseDto = new ArrayList<>();
	      listSearchedCarResponseDto.forEach(val-> System.out.println("carId "+val.getCarId()));;
		 for (Car c : filterCarPagebleDto.getCars()) {
	            String carImagePath = c.getCarImage();
	            SearchedCarResponseDto searchedCarResponseDto = modelMapper.map(c, SearchedCarResponseDto.class);

	            if (carImagePath != null && !carImagePath.isEmpty()) {
	                try {
	                    byte[] allBytes = Files.readAllBytes(Paths.get(carImagePath));
	                    String carImageString = Base64.getEncoder().encodeToString(allBytes);
	                    searchedCarResponseDto.setCarImage(carImageString);
	                } catch (IOException e) {
	                    System.err.println("Error reading image: " + carImagePath);
	                }
	            }

	            listSearchedCarResponseDto.add(searchedCarResponseDto);
	        }
		return listSearchedCarResponseDto; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
