package com.java.Avengers.Entities;
import java.util.Date;

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
    private Date date_naissance;
    private String genre;
    private Date date_deces;
    private String nationalite;
    private String organisation;
    private Date date_ajout;
    private Integer id_adresse;
    private String numero_tel;

    public void setNb_incident(Integer nbIncident) {
    }

    public void setNb_mission(Integer nbMission) {
    }

    public void setCommentaire(String commentaire) {
    }
}
