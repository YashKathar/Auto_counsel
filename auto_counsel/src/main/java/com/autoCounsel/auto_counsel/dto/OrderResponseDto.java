package com.autoCounsel.auto_counsel.dto;

import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.enums.PaymentOptions;

import jakarta.persistence.Column;
import lombok.Data;

@Data
public class OrderResponseDto {
	private String firstName;
	private String lastName;
	private String contactNumber;
	private String paymentOptions;
	private Car car;
}
