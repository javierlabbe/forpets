package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Valoracion;
import cl.gargolas.web.repositories.TamanioRepository;
import cl.gargolas.web.repositories.ValoracionRepository;

@Service
public class ValoracionServiceImpl implements ValoracionService {
	@Autowired
	private ValoracionRepository valoracionRepository;
	
	@Override
	public Boolean guardarValoracion(Valoracion valoracion) {
		valoracionRepository.save(valoracion);
		return null;
	}

	@Override
	public String eliminarValoracion(Long id) {
		valoracionRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarValoracion(Valoracion valoracion) {
		Boolean existe = valoracionRepository.existsById(valoracion.getIdValoracion());
		return null;
	}

	@Override
	public Valoracion obtenerValoracion(Long id) {
		return valoracionRepository.findById(id).get();
	}

	@Override
	public List<Valoracion> obtenerListaValoracion() {
		return valoracionRepository.findAll();
	}

}
