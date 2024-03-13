package com.java.Avengers.Service;

import com.java.Avengers.Entities.Rapport;
import com.java.Avengers.Repository.RapportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RapportService implements IRapportService {

    @Autowired
    private RapportRepository rapportRepository;

    @Override
    public List<Rapport> getAllRapports() {
        return rapportRepository.findAll();
    }
}
