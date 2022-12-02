package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		
		return null;
	}

	@Override
	public Usuario obtenerUsuario(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> obtenerListaUsuarios() {
		// TODO Auto-generated method stub
		return null;
	}

}
