package com.java.Avengers.Repository;

import com.java.Avengers.Entities.IncidentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IncidentRepository extends JpaRepository
    <IncidentEntity, Integer> {

}
