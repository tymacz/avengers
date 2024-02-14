package com.java.avengers.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



import lombok.Getter;
import lombok.Setter;

import java.util.List;


//declaration de la classe super hero
//mapping de la classe entity
@Entity
@Table (name = "super_hero")
public class SuperHeroEntity {

    @Id
    private Long id_hero;
    @Setter
    @Getter
    private String nom_hero;
    @Setter
    @Getter
    private String identite_secrete;
    @Setter
    @Getter
    private String pouvoir;
    @Setter
    @Getter
    private String point_faible;
    @Setter
    @Getter
    private Float score;
    @Setter
    @Getter
    private String commentaire;
    @Setter
    @Getter
    private Integer numero_tel;
    @Setter
    @Getter
    private Integer id_adresse;


    public SuperHeroEntity(){
    }


    public SuperHeroEntity(Long id_hero, String nom_hero, String identite_secrete, String pouvoir, String point_faible, Float score, String commentaire, Integer numero_tel, Integer id_adresse) {

        this.id_hero = id_hero;
        this.nom_hero = nom_hero;
        this.identite_secrete = identite_secrete;
        this.pouvoir = pouvoir;
        this.point_faible = point_faible;
        this.score = score;
        this.commentaire = commentaire;
        this.numero_tel = numero_tel;
        this.id_adresse = id_adresse;
    }




}




