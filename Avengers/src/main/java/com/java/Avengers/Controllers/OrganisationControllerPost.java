package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.OrganisationEntityPost;
import com.java.Avengers.Service.OrganisationServicePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/organisations")
public class OrganisationControllerPost {

    @Autowired
    private OrganisationServicePost organisationServicePost;

    @PostMapping
    public OrganisationEntityPost addOrganisation(@RequestParam String nom) {
        OrganisationEntityPost newOrganisation = new OrganisationEntityPost();
        newOrganisation.setNom(nom);
        return organisationServicePost.addOrganisation(newOrganisation);
    }
}