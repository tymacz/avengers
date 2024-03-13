package com.java.Avengers.Entities;


import jakarta.persistence.*;
import lombok.Setter;


@Setter
@Entity
@Table(name = "adresse")

public class AdresseEntityPost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_adresse;

    private String numero_rue;
    private String nom_rue;
    private String code_postal;
    private String ville;
    private String pays;

}
