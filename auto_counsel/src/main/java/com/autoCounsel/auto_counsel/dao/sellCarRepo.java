package com.autoCounsel.auto_counsel.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.autoCounsel.auto_counsel.entity.SellCar;

@Repository
public interface sellCarRepo extends CrudRepository<SellCar, Integer> {
	List<SellCar> findByCarNameAndCarModel(String carName, String carModel);
}
