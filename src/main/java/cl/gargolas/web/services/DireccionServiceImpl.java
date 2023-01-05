package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Direccion;
import cl.gargolas.web.repositories.DireccionRepository;

@Service
public class DireccionServiceImpl implements DireccionService{
	@Autowired
	private DireccionRepository direccionRepository;

	@Override
	public Boolean guardarDireccion(Direccion direccion) {
		direccionRepository.save(direccion);
		return null;
	}

	@Override
	public String eliminarDireccion(Long id) {
		direccionRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarDireccion(Direccion direccion) {
		Boolean existe = direccionRepository.existsById(direccion.getIdDireccion());
		if (existe) {
			direccionRepository.save(direccion);
			return "Dirección actualizada"; 
		} else {
			return "Dirección no actualizada";
		}
	}

	@Override
	public Direccion obtenerDireccion(Long id) {
		//Boolean existe = direccionRepository.existsById(id);
		return direccionRepository.findById(id).get();
	}

	@Override
	public List<Direccion> obetenerListaDirecciones() {
		return direccionRepository.findAll();
	}
	
	@Override
	public String toString(Long id) {
		Direccion direccion = direccionRepository.findById(id).get();
		return direccion.getNombreCalle()+" "
				+direccion.getNumeroDireccion()+" "
				+direccion.getComuna().getDescripcion()+", "
				+direccion.getComuna().getProvincia().getRegion().getDescripcion();
	}
}