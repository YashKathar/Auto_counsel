package com.autoCounsel.auto_counsel.entity;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.Cascade;

import com.autoCounsel.auto_counsel.enums.PaymentOptions;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.Data;

/*
 * @Entity
 * 
 * @Data public class Orders {
 * 
 * @Id
 * 
 * @GeneratedValue(strategy = GenerationType.IDENTITY) private Long orderId;
 * private String firstName; private String lastName;
 * 
 * @Column(length = 10) private String contactNumber;
 * 
 * @Enumerated(EnumType.STRING) private PaymentOptions paymentOptions;
 * 
 * @OneToOne(mappedBy = "orders", cascade = CascadeType.ALL, fetch =
 * FetchType.EAGER) private Car car;
 * 
 * 
 * }
 */




@Entity
@Data
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;

    private String firstName;
    private String lastName;

    @Column(length = 10)
    private String contactNumber;

    @Enumerated(EnumType.STRING)
    private PaymentOptions paymentOptions;

//    @OneToOne(mappedBy = "orders", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//    private Car car;
    
    @OneToOne
    @JoinColumn(name = "fk_car_id", unique = true)
    private Car car;
}

