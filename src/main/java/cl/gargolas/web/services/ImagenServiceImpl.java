package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.repositories.ImagenRepository;
import cl.gargolas.web.repositories.TamanioRepository;

@Service
public class ImagenServiceImpl implements ImagenService{
	@Autowired
	private ImagenRepository imagenRepository;
	
	@Override
	public Boolean guardarImagen(Imagen imagen) {
		imagenRepository.save(imagen);
		return null;
	}

	@Override
	public String eliminarImagen(Long id) {
		imagenRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarImagen(Imagen imagen) {
		boolean existe = imagenRepository.existsById(imagen.getIdImagen());
		return null;
	}

	public Imagen obtenerImagen(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Imagen> obtenerListaImagenes() {
		// TODO Auto-generated method stub
		return imagenRepository.findAll();
	}
	
}
