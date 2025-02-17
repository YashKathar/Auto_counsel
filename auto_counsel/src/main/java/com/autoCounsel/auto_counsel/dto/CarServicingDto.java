
package com.autoCounsel.auto_counsel.dto;

import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarServicingDto {

    private Integer id;

    private Integer userId;

    private String carModel;

    private String carName;

    private String serviceType;

    private LocalDate appointmentDate;

    private String status;


}
