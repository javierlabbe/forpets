package cl.gargolas.web.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
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
		Usuario retornoUsuario = usuarioRepository.findByEmail(usuario.getEmail());
		
		if(retornoUsuario == null) {
			String passHashed= BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
			usuario.setPassword(passHashed);
			usuarioRepository.save(usuario);
			return true;
		}else {
			return false;
		}
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
	public List<Usuario> listarUsuarios() {
		return usuarioRepository.findAll();
	}
	
	//validación para login
	@Override
	public Boolean ingresoUsuario(String email, String password) {
		Usuario usuario = usuarioRepository.findByEmail(email);
		if(usuario!= null) {
			boolean resultadoPwd = BCrypt.checkpw(password,usuario.getPassword());
			if(resultadoPwd) { 
				return true;
			}else {
				return false;
			}
			}else {
				return false;
		}
	}
	@Override
	public Usuario obtenerUsuarioEmail(String email) {
		return usuarioRepository.findByEmail(email);
	}

}
