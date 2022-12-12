package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Provincia;
import cl.gargolas.web.repositories.ProvinciaRepository;

@Service
public class ProvinciaServiceImpl implements ProvinciaService {
	@Autowired
	private ProvinciaRepository provinciaRepository;

	@Override
	public Boolean guardarProvincia(Provincia provincia) {
		provinciaRepository.save(provincia);
		return null;
	}

	@Override
	public String eliminarProvincia(Long id) {
		provinciaRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarProvincia(Provincia provincia) {
		Boolean existe = provinciaRepository.existsById(provincia.getIdProvincia());
		return null;
	}

	@Override
	public Provincia obtenerProvincia(Long id) {
		//Boolean exist = provinciaRepository.existsById(id);
		return provinciaRepository.findById(id).get();
	}

	@Override
	public List<Provincia> obtenerListaProvincia() {
		return provinciaRepository.findAll();
	}
}