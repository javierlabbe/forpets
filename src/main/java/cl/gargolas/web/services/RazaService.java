package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Raza;

public interface RazaService {
	public Boolean guardarRaza(Raza raza);
	public String eliminarRaza(Long id);
	public String actualizarRaza(Raza raza);
	public Raza obtenerRaza(Long id);
	public List<Raza> obtenerListaRazas();
}
