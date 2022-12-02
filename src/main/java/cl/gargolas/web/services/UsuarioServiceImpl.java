package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService { //Logica de negocio
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Override
	public Boolean guardarUsuario(Usuario usuario) {
		usuarioRepository.save(usuario);
		return null;
	}

	@Override
	public String eliminarUsuario(Long id) {
		usuarioRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarUsuario(Usuario usuario) {
		Boolean existe = usuarioRepository.existsById(usuario.getIdUsuario());
		return null;
	}

	@Override
	public Usuario obtenerUsuario(Long id) {
		//Boolean exist = usuarioRepository.existsById(id);
		return usuarioRepository.findById(id).get();
	}

	@Override
	public List<Usuario> obtenerListaUsuarios() {
		return usuarioRepository.findAll();
	}

}
