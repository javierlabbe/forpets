package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.models.Ubicacion;

public interface UbicacionService {
	public Boolean guardarUbicacion(Ubicacion ubicacion);
	public String eliminarUbicacion(Long id);
	public String actualizarUbicacion(Ubicacion ubicacion);
	public Ubicacion obtenerUbicacion(Long id);
	public List<Ubicacion> obtenerListaUbicacion();
}
