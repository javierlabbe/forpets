package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.LugarInteres;

@Repository
public interface LugarInteresRepository extends JpaRepository<LugarInteres, Long>{

}
