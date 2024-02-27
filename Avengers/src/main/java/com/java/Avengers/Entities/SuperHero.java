package com.java.Avengers.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "super_hero", schema = "avenger")
public class SuperHero {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_hero")
    private Long id;

    @Column(name = "nom_hero")
    private String name;

    @Column(name = "identite_secrete")
    private String secretIdentity;

    @Column(name = "pouvoir")
    private String power;

    @Column(name = "point_faible")
    private String weakness;

    @Column(name = "score")
    private Integer score;

    @Column(name = "commentaire")
    private String comment;

    @Column(name = "numero_tel")
    private String phoneNumber;

    @ManyToOne
    @JoinColumn(name = "id_adresse")
    private Address address;

    public SuperHero(String name) {
        this.name = name;
    }
///////////////////////////////////////////////
    // Getters and setters

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    ///////////////////////////////////////////////
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    ///////////////////////////////////////////////
    public String getPower() {
        return power;
    }
    public void setPower(String power) {
        this.power = power;
    }
    ///////////////////////////////////////////////
    public Integer getScore() {
        return score;
    }
    public void setScore(Integer score) {
        this.score = score;
    }
    ///////////////////////////////////////////////
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    ///////////////////////////////////////////////
    public String getPhoneNumber() {
        return phoneNumber;
    }
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    ///////////////////////////////////////////////
    public String getSecretIdentity() {
        return secretIdentity;
    }
    public void setSecretIdentity(String secretIdentity) {
        this.secretIdentity = secretIdentity;
    }
    ///////////////////////////////////////////////
    public String getWeakness() {
        return weakness;
    }
    public void setWeakness(String weakness) {
        this.weakness = weakness;
    }
    ///////////////////////////////////////////////
    public Address getAddress() {
        return address;
    }
    public void setAddress(Address address) {
        this.address = address;
    }
}
