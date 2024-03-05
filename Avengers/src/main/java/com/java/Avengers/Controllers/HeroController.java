package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/super_hero")
public class HeroController {

    @Autowired
    private HeroService superHeroService;


    @GetMapping
    public List<SuperHero> getAllSuperHeroes() {
        return superHeroService.getAllSuperHeroes();
    }


}
