package com.java.Avengers.Entities;

import jakarta.persistence.*;
import lombok.Setter;

import java.util.Date;

@Setter
@Entity
@Table(name = "organisation")
public class OrganisationEntityPost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_organisation;
    private String nom;
    private String commentaire;
    private Date date_ajout;
    private Date date_modif;
    private Integer nb_incident;
    private Integer nb_mission;
    private String dirigeant;
    private String membre;
    private Integer id_adresse;
    private String numero_tel;




}
