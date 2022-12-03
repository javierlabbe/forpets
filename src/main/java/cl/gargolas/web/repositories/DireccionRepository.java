package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Direccion;

@Repository
public interface DireccionRepository extends JpaRepository<Direccion, Long>{

}