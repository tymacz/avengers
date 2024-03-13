package com.java.Avengers.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "adresse")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_adresse;

    private String numero_rue;
    private String nom_rue;
    private String code_postal;
    private String ville;
    private String pays;

    public Address() {
        // Default constructor required by JPA
    }

    public Address(int id_adresse, String numero_rue, String nom_rue, String code_postal, String ville, String pays) {
        this.id_adresse = id_adresse;
        this.numero_rue = numero_rue;
        this.nom_rue = nom_rue;
        this.code_postal = code_postal;
        this.ville = ville;
        this.pays = pays;
    }

    // Getters and setters
    public int getId() {
        return id_adresse;
    }

    public void setId(int id) {
        this.id_adresse = id_adresse;
    }

    public String getNumero_rue() {
        return numero_rue;
    }

    public void setNumero_rue(String NumeroRue) {
        this.numero_rue = numero_rue;
    }

    public String getNom_rue() {
        return nom_rue;
    }

    public void setNom_rue(String NomRue) {
        this.nom_rue = nom_rue;
    }

    public String getCode_postal() {
        return code_postal;
    }

    public void setCode_postal(String Code_postal) {
        this.code_postal = code_postal;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String Ville) {
        this.ville = ville;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String Pays) {
        this.pays = pays;
    }



}
