package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Repository.HeroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/heroes")
public class HeroController {

    private final HeroRepository heroRepository;

    @Autowired
    public HeroController(HeroRepository heroRepository) {
        this.heroRepository = heroRepository;
    }

    @GetMapping
    public ResponseEntity<List<SuperHero>> getAllHeroes() {
        List<SuperHero> heroes = heroRepository.findAll();
        return ResponseEntity.ok().body(heroes);
    }
}
