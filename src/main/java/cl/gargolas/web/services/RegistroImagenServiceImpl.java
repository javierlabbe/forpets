package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Etiqueta;

import cl.gargolas.web.models.Registro_Imagen;
import cl.gargolas.web.repositories.RegistroImagenRepository;

@Service
public class RegistroImagenServiceImpl implements RegistroImagenService {

	@Autowired
	RegistroImagenRepository registroImagenRepository;
	
	@Override
	public Boolean guardarRegistroImagen(Registro_Imagen registroImagen) {
		registroImagenRepository.save(registroImagen);
		return null;
	}

	@Override
	public String eliminarRegistroImagen(Long id) {
		registroImagenRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarRegistroImagen(Registro_Imagen registroImagen) {
		Boolean existe = registroImagenRepository.existsById(registroImagen.getIdRegistroImagen()); //aqui o en repository?
		if (existe) {
			registroImagenRepository.save(registroImagen);
		} else {
			
		}
		return null;
	}

	@Override
	public Registro_Imagen obtenerRegistroImagen(Long id) {
		Boolean existe = registroImagenRepository.existsById(id);
		
		if (existe) {
			return registroImagenRepository.findById(id).get();			
		}
		return null;
	}

	@Override
	public List<Registro_Imagen> obtenerListaRegistroImagen() {
		return registroImagenRepository.findAll();
	}
}
