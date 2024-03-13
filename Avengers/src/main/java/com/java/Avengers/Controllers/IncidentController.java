package com.java.Avengers.Controllers;


import com.java.Avengers.Entities.IncidentEntity;
import com.java.Avengers.Service.IncidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/incidents")

public class IncidentController {

    @Autowired
    private IncidentService incidentService;


    @PostMapping
    public IncidentEntity addIncident(@RequestParam String nature,@RequestParam String commentaire) // Ajout du paramètre commentaire
    {
        IncidentEntity newIncident = new IncidentEntity();
        newIncident.setNature(nature);
        newIncident.setCommentaire(commentaire);
        return incidentService.addIncident(newIncident);
    }

}
