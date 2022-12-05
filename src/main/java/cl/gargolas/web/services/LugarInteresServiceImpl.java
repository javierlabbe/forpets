package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.LugarInteres;
import cl.gargolas.web.repositories.LugarInteresRepository;

@Service
public class LugarInteresServiceImpl implements LugarInteresService {
	@Autowired
	LugarInteresRepository lugarInteresRepository;

	@Override
	public Boolean guardarLugarInteres(LugarInteres lugarInteres) {
		lugarInteresRepository.save(lugarInteres);
		return null;
	}

	@Override
	public String actualizarLugarInteres(LugarInteres lugarInteres) {
		Boolean existe = lugarInteresRepository.existsById(lugarInteres.getIdLugar()); // aqui o en repository?
		if (existe) {
			lugarInteresRepository.save(lugarInteres);
		} else {

		}
		return null;
	}

	@Override
	public LugarInteres obtenerLugarInteres(Long id) {
		Boolean existe = lugarInteresRepository.existsById(id);

		if (existe) {
			return lugarInteresRepository.findById(id).get();
		}
		return null;
	}

	@Override
	public List<LugarInteres> obtenerListaLugarInteres() {
		return lugarInteresRepository.findAll();
	}

	@Override
	public String eliminarLugarInteres(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
