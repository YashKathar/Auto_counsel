package com.autoCounsel.auto_counsel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.ServicesRepo;
import com.autoCounsel.auto_counsel.entity.Services;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class ServicesService {
	
	@Autowired
	private ServicesRepo servicesRepo;
	
	public Services add(Services service) {
		return servicesRepo.save(service);
	}
	
}
