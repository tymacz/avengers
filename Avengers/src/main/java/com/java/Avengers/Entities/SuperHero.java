package com.java.Avengers.Entities;

import jakarta.persistence.*;
import org.yaml.snakeyaml.constructor.Constructor;

@Entity
@Table(name = "super_hero")
public class SuperHero {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_hero;
    private String nom_hero;
    private String identite_secrete;
    private String pouvoir;
    private String point_faible;
    private int score;
    private String commentaire;
    private String numero_tel;



    @ManyToOne
    @JoinColumn(name = "id_adresse")
    private Address address;

    public SuperHero() {
    }



    // Constructor with parameters
    public SuperHero(String nom_hero, String identite_secrete, String pouvoir, String point_faible, int score, String commentaire, String numero_tel, Address address) {
        this.nom_hero = nom_hero;
        this.identite_secrete = identite_secrete;
        this.pouvoir = pouvoir;
        this.point_faible = point_faible;
        this.score = score;
        this.commentaire = commentaire;
        this.numero_tel = numero_tel;
        this.address = address;
    }

    // Getters and setters
    public int getIdHero() {
        return id_hero;
    }

    public void setIdHero(int idHero) {
        this.id_hero = idHero;
    }

    public String getNomHero() {
        return nom_hero;
    }

    public void setNomHero(String nomHero) {
        this.nom_hero = nomHero;
    }

    public String getIdentiteSecrete() {
        return identite_secrete;
    }

    public void setIdentiteSecrete(String identiteSecrete) {
        this.identite_secrete = identiteSecrete;
    }

    public String getPouvoir() {
        return pouvoir;
    }

    public void setPouvoir(String pouvoir) {
        this.pouvoir = pouvoir;
    }

    public String getPointFaible() {
        return point_faible;
    }

    public void setPointFaible(String pointFaible) {
        this.point_faible = pointFaible;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public String getNumeroTel() {
        return numero_tel;
    }

    public void setNumeroTel(String numeroTel) {
        this.numero_tel = numeroTel;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
