package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Etiqueta;

@Repository
public interface EtiquetaRepository extends JpaRepository<Etiqueta, Long> {

}
