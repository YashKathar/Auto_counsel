package com.autoCounsel.auto_counsel.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Unique identifier for the user

    @Column(name = "first_name", length = 45)
    private String firstName; // User's first name

    @Column(name = "last_name", length = 45)
    private String lastName; // User's last name

    @Column(name = "password", nullable = false, length = 45)
    private String password; // User's password

    @Column(name = "user_name", nullable = false, length = 45)
    private String userName; // User's username

    @Column(name = "role", length = 45)
    private String role;
}
