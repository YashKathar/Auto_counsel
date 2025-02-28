package com.autoCounsel.auto_counsel.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SortResponseDto {
	List<SearchedCarResponseDto> searchedCarResponseDtos = new ArrayList<>();
	Integer totalPages;
}
