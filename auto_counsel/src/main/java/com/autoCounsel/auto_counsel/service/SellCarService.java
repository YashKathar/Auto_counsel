package com.autoCounsel.auto_counsel.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.autoCounsel.auto_counsel.dao.sellCarRepo;
import com.autoCounsel.auto_counsel.dto.SellCarDto;
import com.autoCounsel.auto_counsel.entity.SellCar;

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
    	Path path = Paths.get(productImagePath, fileName);
//    	String fullPathString = productImagePath+fileName;
    	
    	// store the image in the given path 
//    	File imageFullPathFile = new File(fullPathString);
//    	
//    	try(FileOutputStream fos = new FileOutputStream(imageFullPathFile)){
//    		fos.write(carImage.getBytes());
//    	}
    	
    	Files.copy(carImage.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
    	SellCar sellCar = modelMapper.map(sellCarDto, SellCar.class);
    	//store the path in database
    	sellCar.setCarImage(path.toString());
    	
        return sellCarRepo.save(sellCar);
        
    }
    
    
    public List<SellCar> getOnSellCarByNameAndModel(String carName, String carModel) {
    	return sellCarRepo.findByCarNameAndCarModel(carName, carModel);
    }
}
