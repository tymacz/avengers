package com.java.Avengers.Controllers;


import com.java.Avengers.Entities.CivilEntityPost;
import com.java.Avengers.Service.CivilServicePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/civils")
public class CivilControllerPost {

    @Autowired
    private CivilServicePost civilServicePost;

    @PostMapping
    public CivilEntityPost addCivil(
            @RequestParam String nom_civil,
            @RequestParam String prenom_civil
    ) {
        CivilEntityPost newCivil = new CivilEntityPost();
        newCivil.setNom_civil(nom_civil);
        newCivil.setPrenom_civil(prenom_civil);
        return civilServicePost.addCivil(newCivil);
    }

}