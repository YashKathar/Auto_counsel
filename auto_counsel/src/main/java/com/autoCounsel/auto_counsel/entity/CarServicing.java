package com.autoCounsel.auto_counsel.entity;


import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "car_servicing")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarServicing {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

	@Column(name = "car_model", length = 100, nullable = false)
    private String carModel;

    @Column(name = "car_name", length = 20, nullable = false)
    private String carName;

    @ManyToMany
    private List<Services> services;

    @Column(name = "appointment_date", nullable = false)
    private LocalDate appointmentDate;

    @Column(name = "status", length = 45, nullable = false)
    private String status = "Confirmed";
    
    @ManyToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "garage")
	 private Garage garage;

	
    
   
}
