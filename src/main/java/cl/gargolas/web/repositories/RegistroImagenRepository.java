package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Registro_Imagen;

@Repository
public interface RegistroImagenRepository extends JpaRepository<Registro_Imagen, Long> {

}
