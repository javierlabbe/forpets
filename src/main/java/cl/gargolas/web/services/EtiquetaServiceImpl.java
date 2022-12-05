package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Etiqueta;

import cl.gargolas.web.repositories.EtiquetaRepository;


@Service
public class EtiquetaServiceImpl implements EtiquetaService {
	@Autowired
	EtiquetaRepository etiquetaRepository;
	
	@Override
	public Boolean guardarEtiqueta(Etiqueta etiqueta) {
		etiquetaRepository.save(etiqueta);
		return null;
	}

	@Override
	public String eliminarEtiqueta(Long id) {
		etiquetaRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarEtiqueta(Etiqueta etiqueta) {
		Boolean existe = etiquetaRepository.existsById(etiqueta.getIdEtiqueta()); //aqui o en repository?
		if (existe) {
			etiquetaRepository.save(etiqueta);
		} else {
			
		}
		return null;
	}

	@Override
	public Etiqueta obtenerEtiqueta(Long id) {
		Boolean existe = etiquetaRepository.existsById(id);
		
		if (existe) {
			return etiquetaRepository.findById(id).get();			
		}
		return null;
	}

	@Override
	public List<Etiqueta> obtenerListaEtiqueta() {
		return etiquetaRepository.findAll();
	}
}

