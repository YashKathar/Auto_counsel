package com.autoCounsel.auto_counsel.dto;

import com.autoCounsel.auto_counsel.enums.FuelType;

import lombok.Data;

@Data
public class SearchCarDto {
	private String carName;
	private String carModel; 
	private String carBrand; 
	private FuelType fuelType;
}
