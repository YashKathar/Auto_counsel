package com.autoCounsel.auto_counsel.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Garage {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
	 
	 @Column(name = "garage_name", length = 255)
	 private String garageName;
	 
	 @Column(name = "garage_phone", length = 100)
	 private String garagePhone;
	 
	 @Column(name = "garage_address", length = 255)
	 private String garageAddress;
	 

	 @ManyToMany(mappedBy = "garages")
	 private List<Services> services;

	@Override
	public String toString() {
		return "Garage [id=" + id + ", garageName=" + garageName + ", garagePhone=" + garagePhone + ", garageAddress="
				+ garageAddress + "]";
	}

	public Garage(String garageName, String garagePhone, String garageAddress) {
		this.garageName = garageName;
		this.garagePhone = garagePhone;
		this.garageAddress = garageAddress;
	}
	 
	 
	 
}
