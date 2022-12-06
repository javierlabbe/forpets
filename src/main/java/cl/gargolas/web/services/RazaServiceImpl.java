package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Raza;
import cl.gargolas.web.repositories.RazaRepository;

@Service
public class RazaServiceImpl implements RazaService {
	@Autowired
	private RazaRepository razaRepository;
		
	@Override
	public Boolean guardarRaza(Raza raza) {
		razaRepository.save(raza);
		return null;
	}

	@Override
	public String eliminarRaza(Long id) {
		razaRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarRaza(Raza raza) {
		Boolean existe = razaRepository.existsById(raza.getIdRaza()); //aqui o en repository?
		if (existe) {
			razaRepository.save(raza);
		} else {
			
		}
		
		return null;
	}

	@Override
	public Raza obtenerRaza(Long id) {
		Boolean existe = razaRepository.existsById(id);
		
		if (existe) {
			return razaRepository.findById(id).get();			
		}
		return null;
	}
	
	@Override
	public List<Raza> obtenerListaRazas() {
		return razaRepository.findAll();
	}

}
