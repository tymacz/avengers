package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.OrganisationEntity;
import com.java.Avengers.Repository.OrganisationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/organisations")
public class OrganisationController {

    @Autowired
    private OrganisationRepository organisationRepository;
    @GetMapping()
    public  List<OrganisationEntity> getAllOrganisations(){
        return organisationRepository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<OrganisationEntity> getOrganisationById(@PathVariable Integer id) {
       return organisationRepository.findById(id);
    }

    @GetMapping("/nom/{nom}")
    public List<OrganisationEntity> getOrganisationsByNom(@PathVariable String nom) {
        return organisationRepository.findByNom(nom);
    }


}
