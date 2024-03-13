package com.java.Avengers.Entities;


import jakarta.persistence.*;
import lombok.Setter;

@Setter

@Entity
@Table(name = "civil")

public class CivilEntityPost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_civil;

    private String nom_civil;
    private String prenom_civil;
}
