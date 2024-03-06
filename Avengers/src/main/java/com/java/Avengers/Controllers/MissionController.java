package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.Mission;
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
        return missionService.getAllMissions();
    }
}
