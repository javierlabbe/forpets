package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.repositories.ComunaRepository;

@Service
public class ComunaServiceImpl implements ComunaService{
	@Autowired
	private ComunaRepository comunaRepository;

	@Override
	public Boolean guardarComuna(Comuna comuna) {
		comunaRepository.save(comuna);
		return null;
	}

	@Override
	public String eliminarComuna(Long id) {
		comunaRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarComuna(Comuna comuna) {
		Boolean existe = comunaRepository.existsById(comuna.getId());
		return null;
	}

	@Override
	public Comuna obtenerComuna(Long id) {
		//Boolean exist = comunaRepository.existById(id);
		return comunaRepository.findById(id).get();
	}

	@Override
	public List<Comuna> obtenerListaComunas() {
		return comunaRepository.findAll();
	}
}