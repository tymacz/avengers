package com.java.Avengers.Service;

import com.java.Avengers.Entities.OrganisationEntityPost;
import com.java.Avengers.Repository.OrganisationRepositoryPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrganisationServicePost {

    @Autowired
    private OrganisationRepositoryPost organisationRepositoryPost;

    public OrganisationEntityPost addOrganisation(OrganisationEntityPost organisation) {
        return organisationRepositoryPost.save(organisation);
    }
}