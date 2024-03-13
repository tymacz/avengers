package com.java.Avengers.Repository;

import com.java.Avengers.Entities.CivilEntityPost;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CivilRepositoryPost extends JpaRepository<CivilEntityPost, Long> {
}
