package com.java.Avengers.Service;

import com.java.Avengers.Entities.AdresseEntityPost;
import com.java.Avengers.Repository.AdresseRepositoryPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service

public class AdresseServicePost {

    @Autowired
    private AdresseRepositoryPost adresseRepositoryPost;

    public AdresseEntityPost addAdresse(AdresseEntityPost adresse) {
        return adresseRepositoryPost.save(adresse);
    }
}
