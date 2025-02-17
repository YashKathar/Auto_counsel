package com.autoCounsel.auto_counsel.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.CarServicingRepo;

import com.autoCounsel.auto_counsel.entity.CarServicing;
import com.autoCounsel.auto_counsel.entity.User;

@Service
public class CarServicingService {

    @Autowired
    private CarServicingRepo carServicingRepo;

    public CarServicing bookCarService(CarServicing carServicing) {
        return carServicingRepo.save(carServicing);
    }

    public List<CarServicing> findByUser(User loggedInUser) {
        return carServicingRepo.findByUser(loggedInUser);
    }
    
}
