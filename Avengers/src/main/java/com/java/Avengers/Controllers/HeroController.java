package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.SuperHero;
import com.java.Avengers.Entities.SuperHeroInfo;
import com.java.Avengers.Service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/super_hero")
public class HeroController {

    @Autowired
    private HeroService superHeroService;


    @GetMapping
    public List<SuperHero> getAllSuperHeroes() {
        return superHeroService.getAllSuperHeroes();
    }

    @GetMapping("/hero")
    public List<SuperHeroInfo> getAllSuperHeroesInfo() { // Modifiez le type de retour en SuperHeroInfo
        return superHeroService.getAllSuperHeroesInfo();
    }


}
