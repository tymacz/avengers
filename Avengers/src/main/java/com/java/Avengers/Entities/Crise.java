package com.java.Avengers.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "crise")
public class Crise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_crise;
    private String avenger_demasque;
    private String vilain_decouvert;
    private String dommage_collateral;
    private int frais;
    private String proces;

    public Crise() {
    }

    public Crise(String avenger_demasque, String vilain_decouvert, String dommage_collateral, int frais, String proces) {
        this.avenger_demasque = avenger_demasque;
        this.vilain_decouvert = vilain_decouvert;
        this.dommage_collateral = dommage_collateral;
        this.frais = frais;
        this.proces = proces;
    }

    public int getId_crise() {
        return id_crise;
    }

    public void setId_crise(int id_crise) {
        this.id_crise = id_crise;
    }

    public String getAvenger_demasque() {
        return avenger_demasque;
    }

    public void setAvenger_demasque(String avenger_demasque) {
        this.avenger_demasque = avenger_demasque;
    }

    public String getVilain_decouvert() {
        return vilain_decouvert;
    }

    public void setVilain_decouvert(String vilain_decouvert) {
        this.vilain_decouvert = vilain_decouvert;
    }

    public String getDommage_collateral() {
        return dommage_collateral;
    }

    public void setDommage_collateral(String dommage_collateral) {
        this.dommage_collateral = dommage_collateral;
    }

    public int getFrais() {
        return frais;
    }

    public void setFrais(int frais) {
        this.frais = frais;
    }

    public String getProces() {
        return proces;
    }

    public void setProces(String proces) {
        this.proces = proces;
    }
}
