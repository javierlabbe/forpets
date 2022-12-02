package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Tamanio;

@Repository
public interface TamanioRepository extends JpaRepository<Tamanio, Long>{

}
