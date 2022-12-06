package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Reporte;

public interface ImagenService {
	public Boolean guardarImagen(Imagen imagen);
	public String eliminarImagen(Long id);
	public String actualizarImagen(Imagen imagen);
	public Imagen obtenerImagen(Long id);
	public List<Imagen> obtenerListaImagenes();
}
