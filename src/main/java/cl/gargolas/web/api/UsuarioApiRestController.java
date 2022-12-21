package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.UsuarioServiceImpl;

@RestController
@RequestMapping("/apiUsuario")
public class UsuarioApiRestController {
	@Autowired
	private UsuarioServiceImpl usuarioServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarUsuario(@RequestBody Usuario usuario) {
		usuarioServiceImpl.guardarUsuario(usuario);
		return "guardado";
	}
	@RequestMapping("/eliminar")
	public String eliminarUsuario(@RequestParam(value = "id", required = false) Long id) {
		return usuarioServiceImpl.eliminarUsuario(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarUsuario(@RequestBody Usuario usuario) { 
		usuarioServiceImpl.actualizarUsuario(usuario);
		return "Usuario actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerUsuario(@RequestParam(value="id",required = false) Long id) { 
		Usuario usuario = usuarioServiceImpl.obtenerUsuario(id);
		return usuario.toString();
	}
	
	
	@GetMapping("/listar/usuario") 
	public List<Usuario> listarUsuarios() {
		return usuarioServiceImpl.listarUsuarios();
	}

}