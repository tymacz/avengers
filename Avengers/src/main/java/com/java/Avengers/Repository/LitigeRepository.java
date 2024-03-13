package com.java.Avengers.Repository;

import com.java.Avengers.Entities.Litige;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LitigeRepository extends JpaRepository<Litige, String> {

}
