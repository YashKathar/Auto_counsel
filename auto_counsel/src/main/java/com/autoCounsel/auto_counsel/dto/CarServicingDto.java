
package com.autoCounsel.auto_counsel.dto;

import lombok.*;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarServicingDto {

    private Integer id;

    private Integer userId;

    private String carModel;

    private String carName;

    private String services;

    private LocalDate appointmentDate;

    private Integer garage;


}
