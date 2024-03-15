package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.OrganisationEntityPost;
import com.java.Avengers.Service.OrganisationServicePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RestController
@RequestMapping("/api/organisations")
public class OrganisationControllerPost {

    @Autowired
    private OrganisationServicePost organisationServicePost;

    @PostMapping
    public OrganisationEntityPost addOrganisation(
            @RequestParam (required = false) String nom,
            @RequestParam(required = false) String commentaire,
            @RequestParam(required = false) Date date_ajout,
            @RequestParam(required = false) Date date_modif,
            @RequestParam(required = false) Integer nb_incident,
            @RequestParam(required = false) Integer nb_mission,
            @RequestParam(required = false) String dirigeant,
            @RequestParam(required = false) String membre,
            @RequestParam Integer id_adresse,
            @RequestParam(required = false) String numero_tel
    ) {
        OrganisationEntityPost newOrganisation = new OrganisationEntityPost();
        newOrganisation.setNom(nom);
        newOrganisation.setCommentaire(commentaire);
        newOrganisation.setDate_ajout(date_ajout);
        newOrganisation.setDate_modif(date_modif);
        newOrganisation.setNb_incident(nb_incident);
        newOrganisation.setNb_mission(nb_mission);
        newOrganisation.setDirigeant(dirigeant);
        newOrganisation.setMembre(membre);
        newOrganisation.setId_adresse(id_adresse);
        newOrganisation.setNumero_tel(numero_tel);

        return organisationServicePost.addOrganisation(newOrganisation);
    }
}