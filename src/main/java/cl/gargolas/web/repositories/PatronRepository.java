package cl.gargolas.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.gargolas.web.models.Patron;

@Repository
public interface PatronRepository extends JpaRepository<Patron, Long>{

}
