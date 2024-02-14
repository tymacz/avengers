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
		SuperHeroEntity prod = new SuperHeroEntity(5L, "superafroune", "baiser", "francais", "ma bite" , 100F,"je t'encule", 0605151515,114);
	}

}
