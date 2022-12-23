package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Direccion;

public interface DireccionService {
	public Boolean guardarDireccion(Direccion direccion);
	public String eliminarDireccion(Long id);
	public String actualizarDireccion(Direccion direccion);
	public Direccion obtenerDireccion(Long id);
	public List<Direccion> obetenerListaDirecciones();
	String toString(Long id);
}
