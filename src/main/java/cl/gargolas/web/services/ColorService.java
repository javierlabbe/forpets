package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Color;

public interface ColorService {
	public Boolean guardarColor(Color color);
	public String eliminarColor(Long id);
	public String actualizarColor(Color color);
	public Color obtenerColor(Long id);
	public List<Color> obtenerListaColores();
}
