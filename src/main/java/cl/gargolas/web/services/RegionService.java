package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Region;
import cl.gargolas.web.models.Usuario;

public interface RegionService {

	public Boolean guardarRegion(Region region);
	public String eliminarRegion(Long id);
	public String actualizarRegion(Region region);
	public Region obtenerRegion(Long id);
	public List<Region> obtenerListaRegiones();
}
