package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Reporte;

@Repository
public interface ReporteRepository extends JpaRepository<Reporte, Long>{

}
