package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Comuna;

@Repository
public interface ComunaRepository extends JpaRepository<Comuna, Long>{

}
