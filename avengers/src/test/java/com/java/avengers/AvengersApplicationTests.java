package com.java.avengers;

import com.java.avengers.Entity.SuperHeroEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.java.avengers.repository.RepoSuperHero;

@SpringBootTest
class AvengersApplicationTests {

	@Autowired
	private RepoSuperHero repoSuperHero ;

	@Test
	public void testCreateSuperHero() {
		SuperHeroEntity prod = new SuperHeroEntity(5L, "superman", "attaquer", "francais", "la ga" , 100F,"fort fort", 0605151515,114);
	}

}
