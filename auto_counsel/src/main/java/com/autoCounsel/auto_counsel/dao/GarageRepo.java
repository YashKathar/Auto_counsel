package com.autoCounsel.auto_counsel.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.autoCounsel.auto_counsel.entity.Garage;

@Repository
public interface GarageRepo extends JpaRepository<Garage, Integer> {
	
}
