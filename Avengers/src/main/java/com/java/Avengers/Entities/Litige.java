package com.java.Avengers.Entities;

import jakarta.persistence.*;

import java.util.List;


@Entity
@Table(name = "litige")
public class Litige {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_litige;

    private String objet;
    private String type;
    private String personnes_concernees;
    private int cout;
    private String degat_majeur;
    private int deces_citoyens;
    private String casse_biens;
    @OneToMany(mappedBy = "litige", cascade = CascadeType.ALL)
    private List<Piece> piece;

    // Constructeur par défaut
    public Litige() {
    }

    // Constructeur avec paramètres
    public Litige(String objet, String type, String personnes_concernees, int cout, String degat_majeur, int deces_citoyens, String casse_biens, List<Piece> piece) {
        this.objet = objet;
        this.type = type;
        this.personnes_concernees = personnes_concernees;
        this.cout = cout;
        this.degat_majeur = degat_majeur;
        this.deces_citoyens = deces_citoyens;
        this.casse_biens = casse_biens;
        this.piece = piece;
    }

    // Getters and setters
    public int getId_litige() {
        return id_litige;
    }

    public void setId_litige(int id_litige) {
        this.id_litige = id_litige;
    }

    public String getObjet() {
        return objet;
    }

    public void setObjet(String objet) {
        this.objet = objet;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPersonnes_concernees() {
        return personnes_concernees;
    }

    public void setPersonnes_concernees(String personnes_concernees) {
        this.personnes_concernees = personnes_concernees;
    }

    public int getCout() {
        return cout;
    }

    public void setCout(int cout) {
        this.cout = cout;
    }

    public String getDegat_majeur() {
        return degat_majeur;
    }

    public void setDegat_majeur(String degat_majeur) {
        this.degat_majeur = degat_majeur;
    }

    public int getDeces_citoyens() {
        return deces_citoyens;
    }

    public void setDeces_citoyens(int deces_citoyens) {
        this.deces_citoyens = deces_citoyens;
    }

    public String getCasse_biens() {
        return casse_biens;
    }

    public void setCasse_biens(String casse_biens) {
        this.casse_biens = casse_biens;
    }
    public List<Piece> getPieces() {
        return piece;
    }

    public void setPieces(List<Piece> piece) {
        this.piece = piece;
    }

}