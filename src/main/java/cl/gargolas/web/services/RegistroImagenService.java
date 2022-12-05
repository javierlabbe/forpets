package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.models.Registro_Imagen;

public interface RegistroImagenService {

	public Boolean guardarRegistroImagen(Registro_Imagen registro_Imagen);
	public String eliminarRegistroImagen(Long id);
	public String actualizarRegistroImagen(Registro_Imagen registro_Imagen);
	public Registro_Imagen obtenerRegistroImagen(Long id);
	public List<Registro_Imagen> obtenerListaRegistroImagen();
}
