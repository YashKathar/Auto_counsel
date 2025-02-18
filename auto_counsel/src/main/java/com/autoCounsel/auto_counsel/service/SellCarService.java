package com.autoCounsel.auto_counsel.service;

import java.io.IOException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.autoCounsel.auto_counsel.dto.SellCarDto;
import org.springframework.beans.factory.annotation.Value;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.dao.sellCarRepo;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

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

    public SellCar saveSellCar(SellCarDto sellCarDto) throws FileNotFoundException, IOException{
    	
    	//Create folder in the given path if not created
    	File directory = new File(productImagePath);
    	if(!directory.exists()) {
			boolean created = directory.mkdirs();
			if(!created) 
				System.out.println("File is not Created");			
		}
    	MultipartFile carImage = sellCarDto.getCarImage();
    	
    	//Get the FileName
    	String fileName = carImage.getOriginalFilename();
    	System.out.println("fileName :"+fileName);
    	
    	//then add full path
    	String fullPathString = productImagePath+fileName;
    	
    	// store the image in the given path 
    	File imageFullPathFile = new File(fullPathString);
    	
    	try(FileOutputStream fos = new FileOutputStream(imageFullPathFile)){
    		fos.write(carImage.getBytes());
    	}
    	
    	SellCar sellCar = modelMapper.map(sellCarDto, SellCar.class);
    	//store the path in database
    	sellCar.setCarImage(fullPathString);
    	
        return sellCarRepo.save(sellCar);
        
    }
}
