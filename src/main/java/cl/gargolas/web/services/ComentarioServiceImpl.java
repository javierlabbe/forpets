package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cl.gargolas.web.models.Comentario;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.repositories.ComentarioRepository;

public class ComentarioServiceImpl implements ComentarioService {
	@Autowired
	private ComentarioRepository comentarioRepository;

	@Override
	public Boolean guardarComentario(Comentario comentario) {
		comentarioRepository.save(comentario);
		return null;
	}

	@Override
	public String eliminarComentario(Long id) {
		comentarioRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarComentario(Comentario comentario) {
		Boolean existe = comentarioRepository.existsById(comentario.getIdComentario());
		return null;
	}

	@Override
	public Comentario obtenerComentario(Long id) {
		return comentarioRepository.findById(id).get();
		
	}

	@Override
	public List<Comentario> obtenerListaComentario() {
		// TODO Auto-generated method stub
		return null;
	}

}
