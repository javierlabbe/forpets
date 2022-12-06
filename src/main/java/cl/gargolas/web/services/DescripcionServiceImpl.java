package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Descripcion;
import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.repositories.DescripcionRepository;
import cl.gargolas.web.repositories.ReporteRepository;

@Service
public class DescripcionServiceImpl implements DescripcionService {
	@Autowired
	private DescripcionRepository descripcionRepository;
	
	@Override
	public Boolean guardarDescripcion(Descripcion descripcion) {
		descripcionRepository.save(descripcion);
		return null;
	}

	@Override
	public String eliminarDescripcion(Long id) {
		descripcionRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarDescripcion(Descripcion descripcion) {
		Boolean existe = descripcionRepository.existsById(descripcion.getIdDescripcion());
		return null;
	}

	@Override
	public Descripcion obtenerDescripcion(Long id) {
		//Boolean exist = reporteRepository.existsById(id);
		return descripcionRepository.findById(id).get();
	}

	@Override
	public List<Descripcion> obtenerListaDescripcion() {
		return descripcionRepository.findAll();
	}

	

	
}
