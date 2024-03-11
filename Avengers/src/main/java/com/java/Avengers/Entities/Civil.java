package com.java.Avengers.Entities;

import java.util.Date;
import jakarta.persistence.*;

@Entity
@Table(name = "civil")
public class Civil {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_civil;

    private String nom_civil;
    private String prenom_civil;
    private String genre;
    private Date date_naissance;
    private Date date_deces;
    private String nationalite;
    private String organisation;
    private String commentaire;
    private Date date_ajout;
    private Date date_modif;
    private int nb_incident;
    private int nb_mission;
    private String numero_tel;
    private Boolean administrateur;

    // Constructors
    public Civil() {
    }

    public Civil(String nom_civil, String prenom_civil, String genre, Date date_naissance, Date date_deces, String nationalite, String organisation, String commentaire, Date date_ajout, Date date_modif, int nb_incident, int nb_mission, String numero_tel, Boolean administrateur) {
        this.nom_civil = nom_civil;
        this.prenom_civil = prenom_civil;
        this.genre = genre;
        this.date_naissance = date_naissance;
        this.date_deces = date_deces;
        this.nationalite = nationalite;
        this.organisation = organisation;
        this.commentaire = commentaire;
        this.date_ajout = date_ajout;
        this.date_modif = date_modif;
        this.nb_incident = nb_incident;
        this.nb_mission = nb_mission;
        this.numero_tel = numero_tel;
        this.administrateur = administrateur;
    }

    // Getters and setters
    public int getId_civil() {
        return id_civil;
    }

    public void setId_civil(int id_civil) {
        this.id_civil = id_civil;
    }

    public String getNom_civil() {
        return nom_civil;
    }

    public void setNom_civil(String nom_civil) {
        this.nom_civil = nom_civil;
    }

    public String getPrenom_civil() {
        return prenom_civil;
    }

    public void setPrenom_civil(String prenom_civil) {
        this.prenom_civil = prenom_civil;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Date getDate_naissance() {
        return date_naissance;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public Date getDate_deces() {
        return date_deces;
    }

    public void setDate_deces(Date date_deces) {
        this.date_deces = date_deces;
    }

    public String getNationalite() {
        return nationalite;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public Date getDate_ajout() {
        return date_ajout;
    }

    public void setDate_ajout(Date date_ajout) {
        this.date_ajout = date_ajout;
    }

    public Date getDate_modif() {
        return date_modif;
    }

    public void setDate_modif(Date date_modif) {
        this.date_modif = date_modif;
    }

    public int getNb_incident() {
        return nb_incident;
    }

    public void setNb_incident(int nb_incident) {
        this.nb_incident = nb_incident;
    }

    public int getNb_mission() {
        return nb_mission;
    }

    public void setNb_mission(int nb_mission) {
        this.nb_mission = nb_mission;
    }

    public String getNumero_tel() {
        return numero_tel;
    }

    public void setNumero_tel(String numero_tel) {
        this.numero_tel = numero_tel;
    }

    public Boolean getAdministrateur() {
        return administrateur;
    }

    public void setAdministrateur(Boolean administrateur) {
        this.administrateur = administrateur;
    }
}
