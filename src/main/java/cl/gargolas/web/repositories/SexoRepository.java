package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Sexo;

@Repository
public interface SexoRepository extends JpaRepository<Sexo, Long> {

}
