package com.java.Avengers.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "rapport")
public class Rapport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_rapport;
    private String interlocuteur;
    private String evenement;

    @ManyToOne
    @JoinColumn(name = "id_civil")
    private Civil civil;

    @ManyToOne
    @JoinColumn(name = "id_hero")
    private SuperHero hero;

    @ManyToOne
    @JoinColumn(name = "id_mission")
    private Mission mission;

    @ManyToOne
    @JoinColumn(name = "id_crise")
    private Crise crise;

    public Rapport() {
    }

    public Rapport(String interlocuteur, String evenement, Civil civil, SuperHero hero, Mission mission, Crise crise) {
        this.interlocuteur = interlocuteur;
        this.evenement = evenement;
        this.civil = civil;
        this.hero = hero;
        this.mission = mission;
        this.crise = crise;
    }

    public int getId_rapport() {
        return id_rapport;
    }

    public void setId_rapport(int id_rapport) {
        this.id_rapport = id_rapport;
    }

    public String getInterlocuteur() {
        return interlocuteur;
    }

    public void setInterlocuteur(String interlocuteur) {
        this.interlocuteur = interlocuteur;
    }

    public String getEvenement() {
        return evenement;
    }

    public void setEvenement(String evenement) {
        this.evenement = evenement;
    }

    public Civil getCivil() {
        return civil;
    }

    public void setCivil(Civil civil) {
        this.civil = civil;
    }

    public SuperHero getHero() {
        return hero;
    }

    public void setHero(SuperHero hero) {
        this.hero = hero;
    }

    public Mission getMission() {
        return mission;
    }

    public void setMission(Mission mission) {
        this.mission = mission;
    }

    public Crise getCrise() {
        return crise;
    }

    public void setCrise(Crise crise) {
        this.crise = crise;
    }
}
