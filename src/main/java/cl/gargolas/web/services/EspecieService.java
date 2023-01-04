package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Raza;

public interface EspecieService {
	public Boolean guardarEspecie(Especie especie);
	public String eliminarEspecie(Long id);
	public String actualizarEspecie(Especie especie);
	public Especie obtenerEspecie(Long id);
	public List<Especie> obtenerListaEspecies();
	public List<Raza> listaRazas(Long id);
}
