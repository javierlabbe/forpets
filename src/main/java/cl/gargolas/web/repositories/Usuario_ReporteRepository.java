package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Usuario_Reporte;

@Repository
public interface Usuario_ReporteRepository extends JpaRepository<Usuario_Reporte, Long>{

}