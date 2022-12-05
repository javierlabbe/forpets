package cl.gargolas.web.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Lugar_Etiqueta;
@Repository
public interface LugarEtiquetaRepository extends JpaRepository<Lugar_Etiqueta, Long> {

	
}
