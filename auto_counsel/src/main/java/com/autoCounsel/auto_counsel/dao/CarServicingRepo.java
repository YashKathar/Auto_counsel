package com.autoCounsel.auto_counsel.dao;

import com.autoCounsel.auto_counsel.entity.CarServicing;
import com.autoCounsel.auto_counsel.entity.User;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CarServicingRepo extends CrudRepository<CarServicing, Integer> {

    List<CarServicing> findByUser(User user); // Fetch all car services for a specific user



}
