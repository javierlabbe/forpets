package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.models.Region;

public interface RegionService {

	public Boolean guardarRegion(Region region);
	public String eliminarRegion(Long id);
	public String actualizarRegion(Region region);
	public Region obtenerRegion(Long id);
	public List<Region> obtenerListaRegiones();
	public List<Comuna> obtenerListaComunas(Long id); 
}
