package com.java.Avengers.Repository;

import com.java.Avengers.Entities.Mission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MissionRepository extends JpaRepository<Mission, String> {
}
