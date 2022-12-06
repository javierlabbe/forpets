package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Comentario;
import cl.gargolas.web.models.Usuario;

public interface ComentarioService {
	public Boolean guardarComentario(Comentario comentario);
	public String eliminarComentario(Long id);
	public String actualizarComentario(Comentario comentario);
	public Comentario obtenerComentario(Long id);
	public List<Comentario> obtenerListaComentario();
}