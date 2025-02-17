package com.autoCounsel.auto_counsel.dao;

import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface sellCarRepo extends CrudRepository<SellCar, Integer> {

}
