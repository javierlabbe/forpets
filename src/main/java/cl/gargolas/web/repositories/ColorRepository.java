package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Color;

@Repository
public interface ColorRepository extends JpaRepository<Color, Long>{

}
