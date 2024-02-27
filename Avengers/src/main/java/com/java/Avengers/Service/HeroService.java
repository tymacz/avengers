package com.java.Avengers.Service;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Repository.HeroRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroService {

    private final HeroRepository heroRepository;

    public HeroService(HeroRepository heroRepository) {
        this.heroRepository = heroRepository;
    }

    public List<SuperHero> getAllHeroes() {
        return heroRepository.findAll();
    }
}
