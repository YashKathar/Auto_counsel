package com.autoCounsel.auto_counsel.dto;

import com.autoCounsel.auto_counsel.enums.PaymentOptions;

import lombok.Data;

@Data
public class OrderRequestDto {
	private String firstName;
	private String lastName;
	private String contactNumber;
	private PaymentOptions paymentOptions;
	private Long carId;
}
