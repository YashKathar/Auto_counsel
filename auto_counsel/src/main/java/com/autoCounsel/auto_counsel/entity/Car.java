package com.autoCounsel.auto_counsel.entity;

import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.enums.Transmission;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "car")
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Unique identifier for the car

    @Column(nullable = false, length = 50)
    private String make; // Car's manufacturer (e.g., Toyota, Ford)

    @Column(nullable = false, length = 50)
    private String model; // Car model (e.g., Corolla, Mustang)

    @Column(nullable = false)
    private Integer year; // Manufacturing year

    @Column( name = "price", nullable = false )
    private Double price;


    @Column(columnDefinition = "TEXT")
    private String description; // Description of the car

    private Integer mileage; // Mileage in kilometers/miles

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private FuelType fuelType; // Type of fuel (Petrol, Diesel, Electric, Hybrid)

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Transmission transmission; // Transmission type (Manual, Automatic)

    @ManyToOne
    @JoinColumn(name = "seller_id", nullable = false)
    private User seller; // Foreign key referencing the seller

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt; // Timestamp when the car is listed

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt; // Last update timestamp

    @Column(name = "image_url", length = 255)
    private String imageUrl; // URL for car image

}
