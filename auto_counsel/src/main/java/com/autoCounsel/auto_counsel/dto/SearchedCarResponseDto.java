package com.autoCounsel.auto_counsel.dto;

import java.math.BigDecimal;

import com.autoCounsel.auto_counsel.enums.FuelType;

import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Lob;
import lombok.Data;

@Data
public class SearchedCarResponseDto {

   
    private String carModel;

   
    private String carName;

   
    private int year;

   
    private BigDecimal price;

   
    private String contactNumber;
    
   
    private FuelType fuelType;
    
    @Lob
    private String carImage;
}
