package com.java.avengers.services;

import com.java.avengers.Entity.SuperHeroEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.java.avengers.repository.RepoSuperHero;

import java.util.List;

@Service
public  class ServiceSuperHero  implements InterfaceServiceSuperHero {

    @Autowired
    private RepoSuperHero interfaceSuperHero;


    public List<SuperHeroEntity> getAll() {
        return interfaceSuperHero.getAllSuperHero();
    }

    @Override
    public List<SuperHeroEntity> getAllSuperHero() {
        return null;
    }
}
