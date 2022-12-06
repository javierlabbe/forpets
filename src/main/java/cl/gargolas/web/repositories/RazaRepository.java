package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Raza;

@Repository
public interface RazaRepository extends JpaRepository<Raza, Long>{

}
