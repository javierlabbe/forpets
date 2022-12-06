package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Ubicacion;

public interface UbicacionRepository extends JpaRepository<Ubicacion, Long>{

}
