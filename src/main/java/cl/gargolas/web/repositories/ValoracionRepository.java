package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Valoracion;

@Repository
public interface ValoracionRepository extends JpaRepository<Valoracion, Long>{

}
