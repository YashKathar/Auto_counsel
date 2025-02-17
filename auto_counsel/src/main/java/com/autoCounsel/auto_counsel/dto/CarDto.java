package com.autoCounsel.auto_counsel.dto;

import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.enums.Transmission;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class CarDto {

    private Long id; // Unique identifier for the car

    private String make; // Car's manufacturer (e.g., Toyota, Ford)

    private String model; // Car model (e.g.,
    private Integer year; // Manufacturing year
    private Double price;

    private String description; // Description of the car

    private Integer mileage; // Mileage in kilometers/miles


    private FuelType fuelType; // Type of fuel (Petrol, Diesel, Electric, Hybrid)


    private Transmission transmission; // Transmission type (Manual, Automatic)

    private User seller; // Foreign key referencing the seller

    private LocalDateTime createdAt; // Timestamp when the car is listed
    private LocalDateTime updatedAt; // Last update timestamp

    private String imageUrl; // URL for car image
}

