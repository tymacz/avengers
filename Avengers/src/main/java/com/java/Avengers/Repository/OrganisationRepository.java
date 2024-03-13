package com.java.Avengers.Repository;


import com.java.Avengers.Entities.OrganisationEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository //c'est une annotation Spring facilite l'accès aux données, facilitant la gestion des exceptions liées à la persistance des données.
public interface OrganisationRepository extends JpaRepository<OrganisationEntity, Integer> {
    List<OrganisationEntity> findByNom(String nom);
}