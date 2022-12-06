package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Ciudad;
import cl.gargolas.web.repositories.CiudadRepository;

@Service
public class CiudadServiceImpl implements CiudadService {
	@Autowired
	private CiudadRepository ciudadRepository;

	@Override
	public Boolean guardarCiudad(Ciudad ciudad) {
		ciudadRepository.save(ciudad);
		return null;
	}

	@Override
	public String eliminarCiudad(Long id) {
		ciudadRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarCiudad(Ciudad ciudad) {
		Boolean existe = ciudadRepository.existsById(ciudad.getIdCiudad());
		return null;
	}

	@Override
	public Ciudad obtenerCiudad(Long id) {
		//Boolean exist = ciudadRepository.existsById(id);
		return ciudadRepository.findById(id).get();
	}

	@Override
	public List<Ciudad> obtenerListaCiudad() {
		return ciudadRepository.findAll();
	}
}