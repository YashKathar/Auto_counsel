package com.autoCounsel.auto_counsel.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.autoCounsel.auto_counsel.dto.FilterCarPagebleDto;
import com.autoCounsel.auto_counsel.dto.SearchCarDto;
import com.autoCounsel.auto_counsel.dto.SellCarDto;
import com.autoCounsel.auto_counsel.dto.SortResponseDto;
import com.autoCounsel.auto_counsel.dto.SearchedCarResponseDto;
import com.autoCounsel.auto_counsel.entity.Car;
import com.autoCounsel.auto_counsel.entity.SellCar;
import com.autoCounsel.auto_counsel.entity.User;
import com.autoCounsel.auto_counsel.enums.FuelType;
import com.autoCounsel.auto_counsel.enums.SortCars;
import com.autoCounsel.auto_counsel.enums.Transmission;
import com.autoCounsel.auto_counsel.service.CarService;
import com.autoCounsel.auto_counsel.service.SellCarService;

import jakarta.servlet.http.HttpSession;
import lombok.val;

@Controller
@SessionAttributes("isAdmin")
@RequestMapping("/cars")
public class CarController {

    @Autowired
    private SellCarService sellCarService;
    
    @Autowired
    private ModelMapper modelMapper; 
    
    @Autowired
    private CarService carService;

	private FilterCarPagebleDto searchedCar;

//    @PostMapping("/save")
//     public String save(@ModelAttribute CarDto car, Model model) {
//         Car addedCar = sellCarService.addCar(new Car());
//         if (addedCar != null) {
//             model.addAttribute("msg", "Car Added successfully");
//         } else {
//             model.addAttribute("msg", "Unable to add Car");
//         }
//         return "sellCar";
//     }

    @GetMapping("/sellCar")
    public String getList(@ModelAttribute Car car, Model model) {
    	model.addAttribute("fuelType", FuelType.values());
    	model.addAttribute("transmission", Transmission.values());
        return "sellCar";
    }


    @PostMapping("/sell")
    public String sellCar(@ModelAttribute SellCarDto sellCarDto, RedirectAttributes redirectAttributes, HttpSession session, Model model) {
    try {      
        User loggedInUser = (User) session.getAttribute("user");

        sellCarDto.setUser(loggedInUser);

        SellCar saveSellCar = sellCarService.saveSellCar(sellCarDto);
        
        if(saveSellCar == null) {
        	return "redirect:/cars/sellCar";
        }
        
        

        redirectAttributes.addFlashAttribute("message", "Your car has been listed for sale successfully!");
        redirectAttributes.addFlashAttribute("carModel", saveSellCar.getCarModel());
        redirectAttributes.addFlashAttribute("carName", saveSellCar.getCarName());
        redirectAttributes.addFlashAttribute("year", saveSellCar.getYear());
        redirectAttributes.addFlashAttribute("price", saveSellCar.getPrice());
        
        File file = new File(saveSellCar.getCarImage());
        if(file.exists()) {
        	byte[] bytesCarImage = Files.readAllBytes(file.toPath());
        	String encodeToString = Base64.getEncoder().encodeToString(bytesCarImage);
        	model.addAttribute("resource", encodeToString);        	
        }

        model.addAttribute("sellCar",saveSellCar);
        model.addAttribute("message","Your car has been listed for sale successfully!");
        return "carSell-confirmation";
        
       } catch (Exception e) {
        redirectAttributes.addFlashAttribute("errorMessage", "Failed to list the car for sale: " + e.getMessage());
        System.out.println(e.getMessage());
        return "redirect:/cars/sellCar";
    }
}

//
//@GetMapping("/buyCar")
//public String getList( Model model) {
//	model.addAttribute("carName", "Enter car name");
//	model.addAttribute("carModel", "Enter car model");
//	model.addAttribute("fuelType", "Choose..");
//    return "buyCar";
//}
//
//@GetMapping("/buyCar")
//public String getListOfCars(@RequestParam(value = "carName") String carName, @RequestParam(value = "carModel") String carModel, @RequestParam(value = "fuelType", required = false) FuelType fuelType, @RequestParam(value = "pageNumber", defaultValue = "0") Integer pageNumber, @RequestParam(value = "pageSize", defaultValue = "6" ,required = false) Integer pageSize, Model model) throws IOException {
//	
//	SearchCarDto searchCarDto = new SearchCarDto();
//	searchCarDto.setCarName(carName);
//	searchCarDto.setCarModel(carModel);
//	searchCarDto.setFuelType(fuelType);
//	FilterCarPagebleDto searchedCar2 = carService.getSearchedCar(searchCarDto, pageNumber, pageSize);
//	List<SearchedCarResponseDto> listSearchedCarResponseDto = new ArrayList<>();
//	for(Car c: searchedCar2.getCars()) {
//		String carImage = c.getCarImage();
//		byte[] allBytes = Files.readAllBytes(Paths.get(carImage));
//		SearchedCarResponseDto searchedCarResponseDto = modelMapper.map(c, SearchedCarResponseDto.class);
//		String carImageString = Base64.getEncoder().encodeToString(allBytes);
//		searchedCarResponseDto.setCarImage(carImageString);
//		listSearchedCarResponseDto.add(searchedCarResponseDto);
//		
//	}
//	model.addAttribute("searchedCar", listSearchedCarResponseDto);
//	model.addAttribute("totalPages", searchedCar2.getTotalPages());
//	return "buyCar";
//}
    
    @GetMapping("/buyCar")
    public String getListOfCars(
            @RequestParam(value = "carName", required = false) String carName,
            @RequestParam(value = "carModel", required = false) String carModel,
            @RequestParam(value = "fuelType", required = false) String fuelTypeParam,
            @RequestParam(value = "pageNumber", defaultValue = "0") Integer pageNumber,
            @RequestParam(value = "pageSize", defaultValue = "6") Integer pageSize,
            Model model) throws IOException {

        // Convert fuelType String to Enum
        FuelType fuelType = null;
        if (fuelTypeParam != null && !fuelTypeParam.isEmpty()) {
            try {
                fuelType = FuelType.valueOf(fuelTypeParam);
            } catch (IllegalArgumentException e) {
                fuelType = null; // Handle invalid enum values gracefully
            }
        }

        // Create DTO for search criteria
        SearchCarDto searchCarDto = new SearchCarDto();
        searchCarDto.setCarName(carName);
        searchCarDto.setCarModel(carModel);
        searchCarDto.setFuelType(fuelType);

        // Fetch paginated cars
        FilterCarPagebleDto searchedCar2 = carService.getSearchedCar(searchCarDto, pageNumber, pageSize);

        // Convert cars to DTOs with Base64 images
        List<SearchedCarResponseDto> listSearchedCarResponseDto = new ArrayList<>();
        for (Car c : searchedCar2.getCars()) {
            String carImagePath = c.getCarImage();
            SearchedCarResponseDto searchedCarResponseDto = modelMapper.map(c, SearchedCarResponseDto.class);

            if (carImagePath != null && !carImagePath.isEmpty()) {
                try {
                    byte[] allBytes = Files.readAllBytes(Paths.get(carImagePath));
                    String carImageString = Base64.getEncoder().encodeToString(allBytes);
                    searchedCarResponseDto.setCarImage(carImageString);
                } catch (IOException e) {
                    System.err.println("Error reading image: " + carImagePath);
                }
            }

            listSearchedCarResponseDto.add(searchedCarResponseDto);
        } 

        // Add attributes to model
        model.addAttribute("searchedCar", listSearchedCarResponseDto);
        model.addAttribute("totalPages", searchedCar2.getTotalPages());
        model.addAttribute("currentPage", pageNumber);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("sortCars", SortCars.values());
        return "buyCar"; // Return JSP view
    }
    
    @GetMapping("/list")
    private String getSortByAvailbility(@RequestParam(value = "sort") String sortString, @RequestParam(value = "pageNumber", defaultValue = "0") Integer pageNumber, @RequestParam(value = "pageSize", defaultValue = "6") Integer pageSize, Model model) {
    	try {
    		SortResponseDto sortResponseDto = carService.sortCarsByAvailability(sortString, pageNumber, pageSize);
    		model.addAttribute("totalPages", sortResponseDto.getTotalPages());
    		model.addAttribute("searchedCar",sortResponseDto.getSearchedCarResponseDtos());
    		model.addAttribute("sortCars", SortCars.values());
    		model.addAttribute("currentPage", pageNumber);
    		sortResponseDto.getSearchedCarResponseDtos().forEach(System.out::println);
    		return "buyCar";
    		
    	
    	} catch (Exception e) {
			System.out.println(e.getMessage());
			return "buyCar";
		}
    }
      
}
