package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Usuario;

public interface UsuarioService {
	public Boolean guardarUsuario(Usuario usuario);
	public String eliminarUsuario(Long id);
	public String actualizarUsuario(Usuario usuario);
	public Usuario obtenerUsuario(Long id);
	public List<Usuario> obtenerListaUsuarios();
}
