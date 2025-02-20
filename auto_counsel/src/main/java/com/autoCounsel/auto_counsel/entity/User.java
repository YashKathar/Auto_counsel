package com.autoCounsel.auto_counsel.entity;


import jakarta.persistence.*;
import lombok.Data;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name = "user")
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Unique identifier for the user

    @Column(name = "first_name", length = 45)
    private String firstName; // User's first name

    @Column(name = "last_name", length = 45)
    private String lastName; // User's last name

    @Column(name = "user_name", nullable = false, length = 45)
    private String userName; // User's username
    
    @Column(name = "email", nullable = false, unique= true ,length = 45)
    private String email; 
    
    @Column(name = "password", nullable = false, length = 45)
    private String password; // User's password

    
    @Column(name = "role", length = 45)
    private String role;
    
}
