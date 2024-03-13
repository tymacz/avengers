package com.java.Avengers.Entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

@Entity
@Table(name = "piece")
public class Piece {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_piece;
    private String type;
    private String contenu;
    private String photo;
    @ManyToOne
    @JoinColumn(name = "id_litige")
    @JsonIgnore
    private Litige litige; // Référence vers l'entité Litige

    public Piece(){}

    public Piece (String type, String contenu, String photo, Litige litige){
        this.type = type;
        this.contenu = contenu;
        this.photo = photo;
        this.litige = litige;
    }
    public int getId_piece() {
        return id_piece;
    }
    public void setId_piece(int id_piece) {
        this.id_piece = id_piece;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getContenu() {
        return contenu;
    }
    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Litige getLitige() {
        return litige;
    }

    public void setLitige(Litige litige) {
        this.litige = litige;
    }
}
