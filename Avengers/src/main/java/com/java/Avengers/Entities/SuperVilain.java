package com.java.Avengers.Entities;
import jakarta.persistence.*;
@Entity
@Table(name = "super_vilain")
public class SuperVilain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id_vilain;
    private String nom_vilain;
    private String identite_secrete;
    private String pouvoir;
    private String point_faible;
    private String commentaire;
    private String image;

    public SuperVilain() {
    }

    // Constructor with parameters
    public SuperVilain(String nom_vilain, String identite_secrete, String pouvoir, String point_faible, String commentaire, String image) {
        this.nom_vilain = nom_vilain;
        this.identite_secrete = identite_secrete;
        this.pouvoir = pouvoir;
        this.point_faible = point_faible;
        this.commentaire = commentaire;
        this.image = image;
    }

    public void setId_vilain(int id_vilain) {
        this.id_vilain = id_vilain;
    }
    public int getId_vilain() {
        return id_vilain;
    }

    public void setNom_vilain(String nom_vilain) {
        this.nom_vilain = nom_vilain;
    }
    public String getNom_vilain() {
        return nom_vilain;
    }

    public void setIdentite_secrete(String identite_secrete) {
        this.identite_secrete = identite_secrete;
    }
    public String getIdentite_secrete() {
        return identite_secrete;
    }

    public void setPouvoir(String pouvoir) {
        this.pouvoir = pouvoir;
    }
    public String getPouvoir() {
        return pouvoir;
    }

    public void setPoint_faible(String point_faible) {
        this.point_faible = point_faible;
    }
    public String getPoint_faible() {
        return point_faible;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }
    public String getCommentaire() {
        return commentaire;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public String getImage() {
        return image;
    }
}
