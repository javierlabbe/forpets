package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.models.Lugar_Etiqueta;
import cl.gargolas.web.repositories.LugarEtiquetaRepository;

@Service
public class LugarEtiquetaServiceImpl implements LugarEtiquetaService {

	@Autowired
	LugarEtiquetaRepository lugarEtiquetaRepository;
	
	@Override
	public Boolean guardarLugarEtiqueta(Lugar_Etiqueta lugarEtiqueta) {
		lugarEtiquetaRepository.save(lugarEtiqueta);
		return null;
	}
	
	@Override
	public String eliminarLugarEtiqueta(Long id) {
		lugarEtiquetaRepository.deleteById(id);
		return null;
	}
	
	@Override
	public String actualizarLugarEtiqueta(Lugar_Etiqueta lugarEtiqueta) {
		Boolean existe = lugarEtiquetaRepository.existsById(lugarEtiqueta.getIdLugarEtiqueta()); //aqui o en repository?
		if (existe) {
			lugarEtiquetaRepository.save(lugarEtiqueta);
		} else {
			
		}
		return null;
	}
	
	@Override
	public Lugar_Etiqueta obtenerLugarEtiqueta(Long id) {
		Boolean existe = lugarEtiquetaRepository.existsById(id);
		
		if (existe) {
			return lugarEtiquetaRepository.findById(id).get();			
		}
		return null;
	}
	
	@Override
	public List<Lugar_Etiqueta> obtenerListaLugarEtiqueta() {
		return lugarEtiquetaRepository.findAll();
	}
	
}
