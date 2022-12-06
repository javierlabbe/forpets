package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Especie;

@Repository
public interface EspecieRepository extends JpaRepository<Especie, Long> {

}
