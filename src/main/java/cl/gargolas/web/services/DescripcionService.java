package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Descripcion;

public interface DescripcionService {
	public Boolean guardarDescripcion(Descripcion descripcion);
	public String eliminarDescripcion(Long id);
	public String actualizarDescripcion(Descripcion descripcion);
	public Descripcion obtenerDescripcion(Long id);
	public List<Descripcion> obtenerListaDescripcion();
}
