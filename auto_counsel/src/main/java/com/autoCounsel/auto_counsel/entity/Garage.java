package com.autoCounsel.auto_counsel.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "garage")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Garage {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
	 
	 @Column(name = "garage_name", length = 255, nullable = false)
	 private String garageName;
	 
	 @Column(name = "garage_phone", length = 100, nullable = false)
	 private String garagePhone;
	 
	 @Column(name = "garage_address", length = 255, nullable = false)
	 private String garageAddress;
	 
	 @OneToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "car_servicing")
	 private CarServicing carService;
}
