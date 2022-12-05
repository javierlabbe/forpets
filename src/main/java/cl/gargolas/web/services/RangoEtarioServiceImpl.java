package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.RangoEtario;

import cl.gargolas.web.repositories.RangoEtarioRepository;

@Service
public class RangoEtarioServiceImpl implements RangoEtarioService {
	
	
	@Autowired
	RangoEtarioRepository rangoEtarioRepository;

	@Override
	public Boolean guardarRangoEtario(RangoEtario rangoEtario) {
		rangoEtarioRepository.save(rangoEtario);
		return null;
	}

	@Override
	public String eliminarRangoEtario(Long id) {
		rangoEtarioRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarRangoEtario(RangoEtario rangoEtario) {
		Boolean existe = rangoEtarioRepository.existsById(rangoEtario.getIdRangoEtario());
		if(existe) {
			rangoEtarioRepository.save(rangoEtario);
		}else {
			
		}
		return null;
	}

	@Override
	public RangoEtario obtenerRangoEtario(Long id) {
		Boolean existe = rangoEtarioRepository.existsById(id);
		if(existe) {
			return rangoEtarioRepository.findById(id).get();
		}
		return null;
	}

	@Override
	public List<RangoEtario> obtenerListaRangoEtario() {
		return rangoEtarioRepository.findAll();
	}
	
}
