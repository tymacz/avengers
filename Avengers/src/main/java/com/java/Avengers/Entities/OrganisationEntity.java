package com.java.Avengers.Entities;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.sql.Date;


@Setter
@Getter
@Entity
@Table(name = "organisation")
public class OrganisationEntity {

@Id //primary key
@GeneratedValue(strategy = GenerationType.IDENTITY) //indication d'autoincrementation pour Jpa
private Integer id_organisation;

    private String nom;
    private String commentaire;
    private Date date_ajout;
    private Date date_modif;
    private int nb_incident;
    private int nb_mission;
    private String dirigeant;
    private String membre;
    private  String numero_tel;
    @ManyToOne
    @JoinColumn(name = "id_adresse")
    private Address address;



}

