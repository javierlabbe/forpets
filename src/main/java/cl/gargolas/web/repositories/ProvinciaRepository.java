package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Provincia;

@Repository
public interface ProvinciaRepository extends JpaRepository<Provincia, Long>{

}
