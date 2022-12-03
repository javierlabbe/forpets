package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Region;
import cl.gargolas.web.repositories.RegionRepository;

@Service
public class RegionServiceImpl implements RegionService{

	@Autowired
	private RegionRepository regionRepository;

	@Override
	public Boolean guardarRegion(Region region) {
		regionRepository.save(region);
		return null;
	}

	@Override
	public String eliminarRegion(Long id) {
		regionRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarRegion(Region region) {
		Boolean existe = regionRepository.existsById(region.getIdRegion());
		return null;
	}

	@Override
	public Region obtenerRegion(Long id) {
		//Boolean existe = regionRepository.existsById(id);
		return regionRepository.findById(id).get();
	}

	@Override
	public List<Region> obtenerListaRegiones() {
		return regionRepository.findAll();
	}
}