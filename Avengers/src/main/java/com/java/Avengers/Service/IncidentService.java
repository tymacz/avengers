package com.java.Avengers.Service;

import com.java.Avengers.Entities.IncidentEntity;
import com.java.Avengers.Repository.IncidentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IncidentService {

@Autowired
    private IncidentRepository incidentRepository;

public IncidentEntity addIncident(IncidentEntity incident) {
    return incidentRepository.save(incident);
}


}
