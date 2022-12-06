package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.models.Valoracion;

public interface ValoracionService {
	public Boolean guardarValoracion(Valoracion valoracion);
	public String eliminarValoracion(Long id);
	public String actualizarValoracion(Valoracion valoracion);
	public Valoracion obtenerValoracion(Long id);
	public List<Valoracion> obtenerListaValoracion();
}
