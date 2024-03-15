package com.java.Avengers.Controllers;


import com.java.Avengers.Entities.CivilEntityPost;
import com.java.Avengers.Service.CivilServicePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.util.Date;

@RestController
@RequestMapping("/api/civils")
public class CivilControllerPost {

    @Autowired
    private CivilServicePost civilServicePost;

    @PostMapping

    public CivilEntityPost addCivil(
            @RequestParam(required = false) String nom_civil,
            @RequestParam(required = false) String prenom_civil,
            @RequestParam(required = false) String genre,
            @RequestParam(required = false) Date date_naissance,
            @RequestParam(required = false) String nationalite,
            @RequestParam(required = false) String organisation,
            @RequestParam(required = false) String commentaire,
            @RequestParam(required = false) Integer nb_incident,
            @RequestParam(required = false) Integer nb_mission,
            @RequestParam(required = false) Integer id_adresse,
            @RequestParam(required = false) String numero_tel
    ) {
        CivilEntityPost newCivil = new CivilEntityPost();
        newCivil.setNom_civil(nom_civil);
        newCivil.setPrenom_civil(prenom_civil);
        newCivil.setGenre(genre);
        newCivil.setDate_naissance(date_naissance);
        newCivil.setNationalite(nationalite);
        newCivil.setOrganisation(organisation);
        newCivil.setCommentaire(commentaire);
        newCivil.setNb_incident(nb_incident);
        newCivil.setNb_mission(nb_mission);
        newCivil.setId_adresse(id_adresse);
        newCivil.setNumero_tel(numero_tel);

        return civilServicePost.addCivil(newCivil);
    }

}