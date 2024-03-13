package com.java.Avengers.Controllers;


import com.java.Avengers.Entities.Litige;
import com.java.Avengers.Entities.Mission;
import com.java.Avengers.Entities.Piece;

import com.java.Avengers.Service.MissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/Mission")
public class MissionController {
    @Autowired
    private MissionService missionService;

    @GetMapping
    public List<Mission> getAllMissions() {

        List<Mission> missions = missionService.getAllMissions();
        for (Mission mission : missions) {
            // Accéder à la liste des pièces associées au litige de cette mission
            Litige litige = mission.getLitige();
            List<Piece> piece = litige.getPieces();
            // Inclure les détails des pièces dans le schéma JSON
            mission.getLitige().setPieces(piece);
        }
        return missions;

    }
}
