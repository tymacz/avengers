package com.java.Avengers.Entities;
import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "mission")
public class Mission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_mission;

    private String nature;
    private String titre;
    private Date date_debut;
    private Date date_fin;
    private String info;
    private String niveau_gravite;
    private String niveau_urgence;
    @ManyToOne
    @JoinColumn(name = "id_civil")
    private Civil civil;

    @ManyToOne
    @JoinColumn(name = "id_litige")
    private Litige litige;


    // Constructors
    public Mission() {
    }

    public Mission(String nature, String titre, Date date_debut, Date date_fin, String info, String niveau_gravite, String niveau_urgence, Civil civil, Litige litige) {
        this.nature = nature;
        this.titre = titre;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.info = info;
        this.niveau_gravite = niveau_gravite;
        this.niveau_urgence = niveau_urgence;
        this.civil = civil;
        this.litige = litige;
    }

    // Getters and setters
    public int getId_mission() {
        return id_mission;
    }

    public void setId_mission(int id_mission) {
        this.id_mission = id_mission;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Date getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public Date getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(Date date_fin) {
        this.date_fin = date_fin;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getNiveau_gravite() {
        return niveau_gravite;
    }

    public void setNiveau_gravite(String niveau_gravite) {
        this.niveau_gravite = niveau_gravite;
    }

    public String getNiveau_urgence() {
        return niveau_urgence;
    }

    public void setNiveau_urgence(String niveau_urgence) {
        this.niveau_urgence = niveau_urgence;
    }

    public Civil getCivil() {
        return civil;
    }

    public Litige getLitige() {
        return litige;
    }
}
