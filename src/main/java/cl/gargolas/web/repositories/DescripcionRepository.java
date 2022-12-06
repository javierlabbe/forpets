package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import cl.gargolas.web.models.Descripcion;

@Repository
public interface DescripcionRepository extends JpaRepository<Descripcion, Long> {

}
