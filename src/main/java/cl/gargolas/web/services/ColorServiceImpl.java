package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.repositories.ColorRepository;

@Service
public class ColorServiceImpl implements ColorService { //Logica de negocio
	@Autowired
	private ColorRepository colorRepository;
	
	@Override
	public Boolean guardarColor(Color color) {
		colorRepository.save(color);
		return null;
	}

	@Override
	public String eliminarColor(Long id) {
		colorRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarColor(Color color) {
		Boolean existe = colorRepository.existsById(color.getIdColor());
		return null;
	}

	@Override
	public Color obtenerColor(Long id) {
		//Boolean exist = colorRepository.existsById(id);
		return colorRepository.findById(id).get();
	}

	@Override
	public List<Color> obtenerListaColores() {
		return colorRepository.findAll();
	}

}