package com.autoCounsel.auto_counsel.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import org.springframework.web.multipart.MultipartFile;

import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import lombok.*;

@Data
public class SellCarDto {
    private String carModel;
    private String carName;
    private int year;
    private BigDecimal price;
    private String contactNumber;
    private FuelType fuelType;
    private LocalDateTime createdAt = LocalDateTime.now();
    private LocalDateTime updatedAt = LocalDateTime.now();   
    private MultipartFile carImage;
    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user; // Reference to the seller

}
