package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.CategoriaReporteLugar;

@Repository
public interface CategoriaReporteLugarRepository extends JpaRepository<CategoriaReporteLugar, Long>  {

}
