package com.autoCounsel.auto_counsel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.autoCounsel.auto_counsel.dto.OrderRequestDto;
import com.autoCounsel.auto_counsel.dto.OrderResponseDto;
import com.autoCounsel.auto_counsel.entity.Orders;
import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.PaymentOptions;
import com.autoCounsel.auto_counsel.service.OrderService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/order/")
@CrossOrigin(origins = "*")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@PostMapping("create-order/{ID}") 
	public String addOrderPage(Model model, @PathVariable ("ID") Long carId) {
		OrderRequestDto orderRequestDto = new OrderRequestDto();
		orderRequestDto.setCar(carId);
		model.addAttribute("order", orderRequestDto);
		model.addAttribute("paymentOptions", PaymentOptions.values());
		return "Create_order"; 
	}
	
	
	@PostMapping("create-order")
	public String addOrder(@ModelAttribute OrderRequestDto orderRequestDto, Model model, HttpSession session) {
		try {
			User loggedInUser = (User) session.getAttribute("user");
//			System.out.println("logedUser : "+loggedInUser);
			Integer userId = loggedInUser.getId();
			OrderResponseDto orderResponseDto = orderService.addOrder(orderRequestDto, userId);
			model.addAttribute("order",orderResponseDto);
			return "Confirmation_order";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "redirect:/auth/dashboard";
		}
		
	} 
	
	
	
}
