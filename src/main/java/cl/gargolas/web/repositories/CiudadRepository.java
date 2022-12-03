package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Ciudad;

@Repository
public interface CiudadRepository extends JpaRepository<Ciudad, Long>{

}
