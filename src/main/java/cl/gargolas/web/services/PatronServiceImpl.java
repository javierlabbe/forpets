package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Patron;
import cl.gargolas.web.repositories.PatronRepository;

@Service
public class PatronServiceImpl implements PatronService{
	@Autowired
	PatronRepository patronRepository;
	
	@Override
	public Boolean guardarPatron(Patron patron) {
		patronRepository.save(patron);
		return null;
	}

	@Override
	public String eliminarPatron(Long id) {
		patronRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarPatron(Patron patron) {
		Boolean existe = patronRepository.existsById(patron.getIdPatron()); //aqui o en repository?
		if (existe) {
			patronRepository.save(patron);
		} else {
			
		}
		return null;
	}

	@Override
	public Patron obtenerPatron(Long id) {
		Boolean existe = patronRepository.existsById(id);
		
		if (existe) {
			return patronRepository.findById(id).get();			
		}
		return null;
	}

	@Override
	public List<Patron> obtenerListaPatrones() {
		return patronRepository.findAll();
	}
}
