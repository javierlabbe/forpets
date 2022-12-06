package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Comentario;
import cl.gargolas.web.models.Etiqueta;

@Repository
public interface ComentarioRepository extends JpaRepository<Comentario, Long>{

	
}
