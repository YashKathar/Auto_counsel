package com.autoCounsel.auto_counsel.service;

import java.io.IOException;
import org.springframework.stereotype.Service;
import java.io.IOException;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.autoCounsel.auto_counsel.dto.SellCarDto;
import org.springframework.beans.factory.annotation.Value;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.dao.sellCarRepo;
import java.io.File;

@Service
public class SellCarService {

    @Autowired
    private sellCarRepo sellCarRepo;
    
    @Autowired
    private ModelMapper modelMapper;
    
    @Value("${car.image.path}")
	private String productImagePath;
    
    
    

    // public Car addCar(Car car){
    //     return carRepo.save(car);
    // }

    public SellCar saveSellCar(SellCarDto sellCarDto){
    	File directory = new File(productImagePath);
		if(!directory.exists()) {
			boolean created = directory.mkdirs();
			if(!created) 
				System.out.println("File is not Created");			
		}
		
		String fileName = sellCarDto.getCarModel().replaceAll("[^a-zA-Z0-9]", "_") +".png";
//		Decoder decoder = Base64.getDecoder();
    	sellCarDto.getCarImage();
    	
    	SellCar sellcar = modelMapper.map(sellCarDto, SellCar.class);
    	
    	
        return sellCarRepo.save(sellcar);
    }
}
