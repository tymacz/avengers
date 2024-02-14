package com.java.avengers.repository;

import com.java.avengers.Entity.SuperHeroEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepoSuperHero extends JpaRepository<SuperHeroEntity, String> {
    List<SuperHeroEntity> getAllSuperHero();

}
