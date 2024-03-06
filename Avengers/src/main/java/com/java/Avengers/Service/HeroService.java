package com.java.Avengers.Service;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Entities.SuperHeroInfo; // Importez SuperHeroInfo
import com.java.Avengers.Repository.HeroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HeroService implements IEHeroService {

    @Autowired
    private HeroRepository superHeroRepository;

    @Override
    public List<SuperHero> getAllSuperHeroes() {
        return superHeroRepository.findAll();
    }

    public List<SuperHeroInfo> getAllSuperHeroesInfo() {
        return superHeroRepository.findAll().stream()
                .map(hero -> new SuperHeroInfo(hero.getNomHero(), hero.getIdentiteSecrete(), hero.getPouvoir(), hero.getImage(), hero.getCommentaire(), hero.getPointFaible(), hero.getScore()))
                .collect(Collectors.toList());
    }
}
