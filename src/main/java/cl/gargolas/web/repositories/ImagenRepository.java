package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Comentario;
import cl.gargolas.web.models.Imagen;

@Repository
public interface ImagenRepository extends JpaRepository<Imagen, Long>{
}
