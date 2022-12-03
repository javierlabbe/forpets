package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Comuna;

public interface ComunaService {
	public Boolean guardarComuna(Comuna comuna);
	public String eliminarComuna(Long id);
	public String actualizarComuna(Comuna comuna);
	public Comuna obtenerComuna(Long id);
	public List<Comuna> obtenerListaComunas();
}
