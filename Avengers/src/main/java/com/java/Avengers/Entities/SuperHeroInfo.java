package com.java.Avengers.Entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class SuperHeroInfo {
       
    private String nom_hero;
    private String identite_secrete;
    private String pouvoir;
    private String point_faible;
    private int score;
    private String commentaire;
    private String image;

    // Constructor
    public SuperHeroInfo(String nom_hero, String identite_secrete, String pouvoir, String image, String point_faible, String commentaire, int score) {
        this.nom_hero = nom_hero;
        this.identite_secrete = identite_secrete;
        this.pouvoir = pouvoir;
        this.image = image;
        this.point_faible = point_faible;
        this.commentaire = commentaire;
        this.score = score;

    }

    // Getters and setters
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
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
}
