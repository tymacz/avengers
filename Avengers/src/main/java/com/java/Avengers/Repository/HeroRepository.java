package com.java.Avengers.Repository;

import com.java.Avengers.Entities.SuperHero;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HeroRepository extends JpaRepository<SuperHero, String> {
}
