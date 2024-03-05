package com.java.Avengers.Service;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Repository.HeroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HeroService implements IEHeroService {

    @Autowired
    private HeroRepository superHeroRepository;

    @Override
    public List<SuperHero> getAllSuperHeroes() {
        return superHeroRepository.findAll();
    }
}
