package com.autoCounsel.auto_counsel.entity;

import jakarta.persistence.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.autoCounsel.auto_counsel.enums.FuelType;


@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "sell_car")
public class SellCar {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user; // Reference to the seller

    

    @Column(name = "car_model", nullable = false, length = 50)
    private String carModel;

    @Column(name = "car_name", nullable = false, length = 50)
    private String carName;

    @Column(name = "year", nullable = false)
    private int year;

    @Column(name = "price", nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "contact_number", nullable = false, length = 15)
    private String contactNumber;
    
    @Enumerated(EnumType.STRING)
    private FuelType fuelType;

//    @Column(name = "image_url", length = 255)
//    private String imageUrl; // Store image path

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt = LocalDateTime.now();

    @Column(name = "updated_at")
    private LocalDateTime updatedAt = LocalDateTime.now();
    
    @Column(name = "car_image")
    private String carImage;

    @PreUpdate
    public void setLastUpdate() {
        this.updatedAt = LocalDateTime.now();
    }

}