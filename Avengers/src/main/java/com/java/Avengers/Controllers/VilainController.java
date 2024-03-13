package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.SuperVilain;
import com.java.Avengers.Service.VilainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/super_vilain")
public class VilainController {

    @Autowired
    private VilainService superVilainService;


    @GetMapping
    public List<SuperVilain> getAllSuperVilains() {
        return superVilainService.getAllSuperVilains();
    }
}
