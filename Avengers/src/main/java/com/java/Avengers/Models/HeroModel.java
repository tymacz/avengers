package com.java.Avengers.Models;

public class HeroModel {
    private String nomHero;
    private String identiteSecrete;
    private String pouvoir;
    private String pointFaible;
    private int score;
    private String commentaire;
    private String numeroTel;

    public HeroModel(String nomHero, String identiteSecrete, String pouvoir, String pointFaible, int score, String commentaire, String numeroTel) {
        this.nomHero = nomHero;
        this.identiteSecrete = identiteSecrete;
        this.pouvoir = pouvoir;
        this.pointFaible = pointFaible;
        this.score = score;
        this.commentaire = commentaire;
        this.numeroTel = numeroTel;
    }

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

    public String getPointFaible() {
        return pointFaible;
    }

    public void setPointFaible(String pointFaible) {
        this.pointFaible = pointFaible;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public String getNumeroTel() {
        return numeroTel;
    }

    public void setNumeroTel(String numeroTel) {
        this.numeroTel = numeroTel;
    }
}
