package com.autoCounsel.auto_counsel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.enums.FuelType;

@Repository
public interface sellCarRepo extends JpaRepository<SellCar, Integer> {
	@Query("SELECT c FROM SellCar c " +
		       "WHERE (:carName IS NULL OR :carName = '' OR c.carName = :carName) " +
		       "AND (:carModel IS NULL OR :carModel = '' OR c.carModel = :carModel) " +
		       "AND (:fuelType IS NULL OR :fuelType = '' OR c.fuelType = :fuelType)" +
	           "ORDER BY c.carName ASC, c.carModel ASC NULLS LAST")
	    List<SellCar> filterCars(@Param("carName") String carName,
	                         @Param("carModel") String carModel,
	                         @Param("fuelType") FuelType fuelType);
	 
	@Query("SELECT c FROM SellCar c " +
		       "WHERE (:carName IS NULL OR :carName = '' OR c.carName = :carName) " +
		       "AND (:carModel IS NULL OR :carModel = '' OR c.carModel = :carModel) " +
	           "ORDER BY c.carName ASC, c.carModel ASC NULLS LAST")
	    List<SellCar> filterCarsExceptFueltype(@Param("carName") String carName,
	                         @Param("carModel") String carModel);
}
