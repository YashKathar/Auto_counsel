package com.autoCounsel.auto_counsel.service;

import com.autoCounsel.auto_counsel.dao.sellCarRepo;
import com.autoCounsel.auto_counsel.entity.SellCar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellCarService {

    @Autowired
    private sellCarRepo sellCarRepo;

    // public Car addCar(Car car){
    //     return carRepo.save(car);
    // }

    public SellCar saveSellCar(SellCar sellCar) {
        return sellCarRepo.save(sellCar);
    }
}
