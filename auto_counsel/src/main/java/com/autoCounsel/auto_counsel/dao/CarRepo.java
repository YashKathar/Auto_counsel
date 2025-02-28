package com.autoCounsel.auto_counsel.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.enums.FuelType;

public interface CarRepo extends JpaRepository<Car, Long> {
	@Query("SELECT c FROM Car c " +
		       "WHERE (:carName IS NULL OR :carName = '' OR c.carName = :carName) " +
		       "AND (:carModel IS NULL OR :carModel = '' OR c.carModel = :carModel) " +
		       "AND (:fuelType IS NULL OR :fuelType = '' OR c.fuelType = :fuelType)" +
	           "ORDER BY c.carName ASC, c.carModel ASC NULLS LAST") 
	    Page<Car> filterCars(@Param("carName") String carName,
	                         @Param("carModel") String carModel,
	                         @Param("fuelType") FuelType fuelType, Pageable pageable);
	 
	@Query("SELECT c FROM Car c " +
		       "WHERE (:carName IS NULL OR :carName = '' OR c.carName = :carName) " +
		       "AND (:carModel IS NULL OR :carModel = '' OR c.carModel = :carModel) " +
	           "ORDER BY c.carName ASC, c.carModel ASC NULLS LAST")
	    Page<Car> filterCarsExceptFueltype(@Param("carName") String carName,
	                         @Param("carModel") String carModel, Pageable pageable);
	
	Page<Car> findByIsBooked(Boolean check, Pageable pageble);
	
}
