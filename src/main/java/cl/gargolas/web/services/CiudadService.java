package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Ciudad;

public interface CiudadService {
	public Boolean guardarCiudad(Ciudad ciudad);
	public String eliminarCiudad(Long id);
	public String actualizarCiudad(Ciudad ciudad);
	public Ciudad obtenerCiudad(Long id);
	public List<Ciudad> obtenerListaCiudad();
}
