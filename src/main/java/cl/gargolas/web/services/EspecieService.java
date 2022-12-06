package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Especie;

public interface EspecieService {
	public Boolean guardarEspecie(Especie especie);
	public String eliminarEspecie(Long id);
	public String actualizarEspecie(Especie especie);
	public Especie obtenerEspecie(Long id);
	public List<Especie> obtenerListaEspecies();
}
