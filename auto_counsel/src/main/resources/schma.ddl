CREATE TABLE `cars` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `mileage` int DEFAULT NULL,
  `fuel_type` enum('Petrol','Diesel','Electric','Hybrid') NOT NULL,
  `transmission` enum('Manual','Automatic') NOT NULL,
  `seller_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';




CREATE TABLE `car_servicing` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,  -- Reference to the user booking the service
  `car_model` VARCHAR(100) NOT NULL,
  `car_name` VARCHAR(20) NOT NULL,
  `service_type` VARCHAR(100) NOT NULL,
  `appointment_date` DATE NOT NULL,
  `status` VARCHAR(45) DEFAULT 'Pending',  -- Status: Pending, In Progress, Completed
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;