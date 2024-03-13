package com.java.Avengers.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.java.Avengers.Entities.OrganisationEntity;
import com.java.Avengers.Repository.OrganisationRepository;
import java.util.List;
import java.util.Optional;


@Service
public class OrganisationService {
    @Autowired
    private  OrganisationRepository organisationRepository;

//    private static List<com.java.Avengers.Entities.OrganisationEntity> OrganisationEntity;

    public  List<OrganisationEntity> getAllOrganisations() {
        return organisationRepository.findAll();
    }


    public Optional<OrganisationEntity> getOrganisationById(Long id) {
        return organisationRepository.findById(Math.toIntExact(id));
    }

}
