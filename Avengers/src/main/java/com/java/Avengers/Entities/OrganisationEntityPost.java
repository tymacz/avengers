package com.java.Avengers.Entities;

import jakarta.persistence.*;
import lombok.Setter;

@Setter
@Entity
@Table(name = "organisation")
public class OrganisationEntityPost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_organisation;
    private String nom;




}
