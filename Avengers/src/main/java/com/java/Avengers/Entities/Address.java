package com.java.Avengers.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "adresse")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_adresse;
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

    public String getStreet() {
        return numero_rue;
    }

    public void setStreet(String street) {
        this.numero_rue = numero_rue;
    }

    public String getCity() {
        return nom_rue;
    }

    public void setCity(String city) {
        this.nom_rue = nom_rue;
    }

    public String getState() {
        return code_postal;
    }

    public void setState(String state) {
        this.code_postal = code_postal;
    }

    public String getCountry() {
        return ville;
    }

    public void setCountry(String country) {
        this.ville = ville;
    }

    public String getPostalCode() {
        return pays;
    }

    public void setPostalCode(String postalCode) {
        this.pays = pays;
    }

    // Override toString() method for easy printing
    @Override
    public String toString() {
        return "Address{" +
                "id_adresse=" + id_adresse +
                ", numero_rue='" + numero_rue + '\'' +
                ", nom_rue='" + nom_rue + '\'' +
                ", code_postal='" + code_postal + '\'' +
                ", ville='" + ville + '\'' +
                ", pays='" + pays + '\'' +
                '}';
    }
}
