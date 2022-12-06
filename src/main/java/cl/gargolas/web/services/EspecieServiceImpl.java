package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Especie;
import cl.gargolas.web.repositories.EspecieRepository;

@Service
public class EspecieServiceImpl implements EspecieService {
	@Autowired
	EspecieRepository especieRepository;
	
	@Override
	public Boolean guardarEspecie(Especie especie) {
		especieRepository.save(especie);
		return null;
	}

	@Override
	public String eliminarEspecie(Long id) {
		especieRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarEspecie(Especie especie) {
		Boolean existe = especieRepository.existsById(especie.getIdEspecie()); //aqui o en repository?
		if (existe) {
			especieRepository.save(especie);
		} else {
			
		}
		
		return null;
	}

	@Override
	public Especie obtenerEspecie(Long id) {
		Boolean existe = especieRepository.existsById(id);
		
		if (existe) {
			return especieRepository.findById(id).get();			
		}
		return null;
	}

	@Override
	public List<Especie> obtenerListaEspecies() {
		return especieRepository.findAll();
	}
	
}
