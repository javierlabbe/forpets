package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Sexo;
import cl.gargolas.web.repositories.SexoRepository;

@Service
public class SexoServiceImpl implements SexoService{
	@Autowired
	private SexoRepository sexoRepository;
	
	@Override
	public Boolean guardarSexo(Sexo sexo) {
		sexoRepository.save(sexo);
		return null;
	}

	@Override
	public String eliminarSexo(Long id) {
		sexoRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarSexo(Sexo sexo) {
		Boolean existe = sexoRepository.existsById(sexo.getIdSexo()); //aqui o en repository?
		if (existe) {
			sexoRepository.save(sexo);
		} else {
			
		}
		
		return null;
	}

	@Override
	public Sexo obtenerSexo(Long id) {
		Boolean existe = sexoRepository.existsById(id);
		
		if (existe) {
			return sexoRepository.findById(id).get();			
		}
		return null;
	}
	
	@Override
	public List<Sexo> obtenerListaSexo() {
		return sexoRepository.findAll();
	}
	
	
}
