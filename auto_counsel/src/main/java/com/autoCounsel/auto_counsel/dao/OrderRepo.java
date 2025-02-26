package com.autoCounsel.auto_counsel.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.autoCounsel.auto_counsel.entity.Orders;

public interface OrderRepo extends JpaRepository<Orders, Long> {

}
