package com.java.Avengers.Repository;

import com.java.Avengers.Entities.OrganisationEntityPost;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrganisationRepositoryPost extends JpaRepository<OrganisationEntityPost, Long> {
}
