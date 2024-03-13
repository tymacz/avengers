package com.java.Avengers.Repository;

import com.java.Avengers.Entities.SuperVilain;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VilainRepository extends JpaRepository<SuperVilain, String> {
}
