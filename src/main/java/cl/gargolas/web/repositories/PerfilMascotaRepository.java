package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.PerfilMascota;

@Repository
public interface PerfilMascotaRepository extends JpaRepository<PerfilMascota, Long>{

}
