package com.java.Avengers.Controllers;


import com.java.Avengers.Entities.AdresseEntityPost;
import com.java.Avengers.Service.AdresseServicePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/adresse")

public class AdresseControllerPost {

    @Autowired
    private AdresseServicePost adresseServicePost;

    @PostMapping
    public AdresseEntityPost addAdresse(@RequestParam String numero_rue, @RequestParam String nom_rue,@RequestParam  String code_postal,@RequestParam String ville ,@RequestParam String pays)
    {
        AdresseEntityPost newAdresse = new AdresseEntityPost();
        newAdresse.setNumero_rue(numero_rue);
        newAdresse.setNom_rue(nom_rue);
        newAdresse.setCode_postal(code_postal);
        newAdresse.setVille(ville);
        newAdresse.setPays(pays);
        return adresseServicePost.addAdresse(newAdresse);
    }
}
