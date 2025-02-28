package com.autoCounsel.auto_counsel.service;

import org.modelmapper.ModelMapper;
import org.modelmapper.PropertyMap;
import org.modelmapper.TypeMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.autoCounsel.auto_counsel.dao.CarRepo;
import com.autoCounsel.auto_counsel.dao.OrderRepo;
import com.autoCounsel.auto_counsel.dto.OrderRequestDto;
import com.autoCounsel.auto_counsel.dto.OrderResponseDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.Orders;
import com.autoCounsel.auto_counsel.entity.User;

import jakarta.persistence.EntityNotFoundException;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class OrderService {
	
	@Autowired
	private OrderRepo orderRepo;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	private CarRepo carRepo;

	public OrderResponseDto addOrder(OrderRequestDto orderRequestDto, Integer userId) throws Exception {
		Car car = carRepo.findById(orderRequestDto.getCarId()).orElseThrow(()-> new EntityNotFoundException("car with an id :"+orderRequestDto.getCarId()+" is not found"));
		
		 
				
		Orders orders = new Orders();
		orders.setFirstName(orderRequestDto.getFirstName());
		orders.setLastName(orderRequestDto.getLastName());
		orders.setContactNumber(orderRequestDto.getContactNumber());
		orders.setPaymentOptions(orderRequestDto.getPaymentOptions());
		orders.setCar(car);
		
		Orders saveOrder = orderRepo.save(orders);
		car.setOrders(saveOrder);
		car.setIsBooked(true);
		car.setBuyerId(userId);
		Car save = carRepo.save(car);
		OrderResponseDto map = modelMapper.map(saveOrder, OrderResponseDto.class);
		return map;
		
		
		
		 
	}
	
	
}
