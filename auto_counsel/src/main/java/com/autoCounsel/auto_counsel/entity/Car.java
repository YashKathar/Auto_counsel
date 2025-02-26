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
    private Long carId; 

    @Column(nullable = false, length = 50)
    private String carName;
    
    @Column(nullable = false, length = 50)
    private String carModel;

    @Column(nullable = false)
    private Integer year;

    @Column(name = "price", nullable = false)
    private Double price;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private FuelType fuelType;

    @Enumerated(EnumType.STRING) 
    @Column(nullable = false)
    private Transmission transmission;

    @ManyToOne
    @JoinColumn(name = "seller_id", nullable = false)
    private User seller;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @Column(name = "car_image")
    private String carImage;

    @Column(columnDefinition = "BOOLEAN DEFAULT FALSE")
    private Boolean isBooked = false;

//    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
//    @JoinColumn(name = "fk_order_id", referencedColumnName = "orderId", unique = true)
//    private Orders orders;
    
    @OneToOne(mappedBy = "car", cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
    private Orders orders;

    @Column(name = "contact_number", nullable = false, length = 15)
    private String contactNumber;

    private Integer buyerId;
    
}

