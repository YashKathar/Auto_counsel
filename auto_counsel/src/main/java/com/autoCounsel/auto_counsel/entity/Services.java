package com.autoCounsel.auto_counsel.entity;



import java.util.List;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import lombok.Data;

@Data
@Entity
public class Services {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long serviceId;
	
	private String serviceName;
	
	@ManyToMany
	@JoinTable(
			name = "service_garage",
			joinColumns = @JoinColumn(name="service_id"), 
			inverseJoinColumns = @JoinColumn(name="garage_id")
	)
	private List<Garage> garages;
}
