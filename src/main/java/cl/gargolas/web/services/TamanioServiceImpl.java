package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.repositories.TamanioRepository;

@Service
public class TamanioServiceImpl implements TamanioService { //Logica de negocio
	@Autowired
	private TamanioRepository tamanioRepository;
	
	@Override
	public Boolean guardarTamanio(Tamanio tamanio) {
		tamanioRepository.save(tamanio);
		return null;
	}

	@Override
	public String eliminarTamanio(Long id) {
		tamanioRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarTamanio(Tamanio tamanio) {
		Boolean existe = tamanioRepository.existsById(tamanio.getIdTamanio());
		return null;
	}

	@Override
	public Tamanio obtenerTamanio(Long id) {
		//Boolean exist = tamanioRepository.existsById(id);
		return tamanioRepository.findById(id).get();
	}

	@Override
	public List<Tamanio> obtenerListaTamanios() {
		return tamanioRepository.findAll();
	}

}
