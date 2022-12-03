package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Region;

@Repository
public interface RegionRepository extends JpaRepository<Region, Long>{

}
