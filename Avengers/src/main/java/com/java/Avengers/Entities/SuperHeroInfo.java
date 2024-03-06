package com.java.Avengers.Entities;

public class SuperHeroInfo {
    private String nomHero;
    private String identiteSecrete;
    private String pouvoir;
    private String image;
    private String point_faible;
    private String commentaire;
    private int score;
    private String numero_tel;

    // Constructor
    public SuperHeroInfo(String nomHero, String identiteSecrete, String pouvoir, String image, String point_faible, String commentaire, int score) {
        this.nomHero = nomHero;
        this.identiteSecrete = identiteSecrete;
        this.pouvoir = pouvoir;
        this.image = image;
        this.point_faible = point_faible;
        this.commentaire = commentaire;
        this.score = score;

    }

    // Getters and setters
    public String getNomHero() {
        return nomHero;
    }

    public void setNomHero(String nomHero) {
        this.nomHero = nomHero;
    }

    public String getIdentiteSecrete() {
        return identiteSecrete;
    }

    public void setIdentiteSecrete(String identiteSecrete) {
        this.identiteSecrete = identiteSecrete;
    }

    public String getPouvoir() {
        return pouvoir;
    }

    public void setPouvoir(String pouvoir) {
        this.pouvoir = pouvoir;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }
    public String getPointFaible() {
        return point_faible;
    }

    public void setPointFaible(String pointFaible) {
        this.point_faible = pointFaible;
    }
    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
