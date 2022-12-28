package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.PerfilMascota;
import cl.gargolas.web.repositories.PerfilMascotaRepository;

@Service
public class PerfilMascotaServiceImpl implements PerfilMascotaService{
	@Autowired
	private PerfilMascotaRepository perfilMascotaRepository;
	
	@Override
	public Boolean guardarPerfilMascota(PerfilMascota perfilMascota) {
		perfilMascotaRepository.save(perfilMascota);
		return null;
	}

	@Override
	public String eliminarPerfilMascota(Long id) {
		perfilMascotaRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarPerfilMascota(PerfilMascota perfilMascota) {
		Boolean existe = perfilMascotaRepository.existsById(perfilMascota.getIdPerfilMascota()); //aqui o en repository?
		if (existe) {
			perfilMascotaRepository.save(perfilMascota);
		} else {
			
		}
		
		return null;
	}

	@Override
	public PerfilMascota obtenerPerfilMascota(Long id) {
		Boolean existe = perfilMascotaRepository.existsById(id);
		
		if (existe) {
			return perfilMascotaRepository.findById(id).get();			
		}
		return null;
	}
	
	@Override
	public List<PerfilMascota> obtenerListaPerfilMascota() {
		
		return perfilMascotaRepository.findAll();
	}

	

}
