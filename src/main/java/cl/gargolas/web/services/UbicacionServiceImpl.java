package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Ubicacion;
import cl.gargolas.web.repositories.UbicacionRepository;

@Service
public class UbicacionServiceImpl implements UbicacionService {
	@Autowired
	private UbicacionRepository ubicacionRepository;
	
	@Override
	public Boolean guardarUbicacion(Ubicacion ubicacion) {
		ubicacionRepository.save(ubicacion);
		return null;
	}

	@Override
	public String eliminarUbicacion(Long id) {
		ubicacionRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarUbicacion(Ubicacion ubicacion) {
		Boolean existe = ubicacionRepository.existsById(ubicacion.getIdUbicacion());
		return null;
	}

	@Override
	public Ubicacion obtenerUbicacion(Long id) {
		// TODO Auto-generated method stub
		return ubicacionRepository.findById(id).get();
	}

	@Override
	public List<Ubicacion> obtenerListaUbicacion() {
		// TODO Auto-generated method stub
		return ubicacionRepository.findAll();
	}
	

	

}
