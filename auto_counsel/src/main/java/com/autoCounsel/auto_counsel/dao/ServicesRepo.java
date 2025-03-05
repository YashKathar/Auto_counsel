package com.autoCounsel.auto_counsel.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.autoCounsel.auto_counsel.entity.Services;

public interface ServicesRepo extends JpaRepository<Services, Long> {
	Optional<Services> findByServiceName(String serviceName);
}
