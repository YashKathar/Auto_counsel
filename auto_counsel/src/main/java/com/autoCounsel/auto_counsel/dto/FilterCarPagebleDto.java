package com.autoCounsel.auto_counsel.dto;

import java.util.List;

import com.autoCounsel.auto_counsel.entity.Car;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FilterCarPagebleDto {
	private List<Car> cars;
	private Integer totalPages;
}
