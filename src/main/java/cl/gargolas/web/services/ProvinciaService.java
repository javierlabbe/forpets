package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Provincia;

public interface ProvinciaService {
	public Boolean guardarProvincia(Provincia provincia);
	public String eliminarProvincia(Long id);
	public String actualizarProvincia(Provincia provincia);
	public Provincia obtenerProvincia(Long id);
	public List<Provincia> obtenerListaProvincia();
}
