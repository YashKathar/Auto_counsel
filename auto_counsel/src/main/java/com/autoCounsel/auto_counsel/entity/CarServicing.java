package com.autoCounsel.auto_counsel.entity;


import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;

@Entity
@Table(name = "car_servicing")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CarServicing {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

	@Column(name = "car_model", length = 100, nullable = false)
    private String carModel;

    @Column(name = "car_name", length = 20, nullable = false)
    private String carName;

    @Column(name = "service_type", length = 100, nullable = false)
    private String serviceType;

    @Column(name = "appointment_date", nullable = false)
    private LocalDate appointmentDate;

    @Column(name = "status", length = 45, nullable = false)
    private String status = "Confirmed";
    
    @ManyToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "garage")
	 private Garage garage;

	@Override
	public String toString() {
		return "CarServicing [id=" + id + ", user=" + user + ", carModel=" + carModel + ", carName=" + carName
				+ ", serviceType=" + serviceType + ", appointmentDate=" + appointmentDate + ", status=" + status
				+ ", garage=" + garage + "]";
	}
    
   
}
