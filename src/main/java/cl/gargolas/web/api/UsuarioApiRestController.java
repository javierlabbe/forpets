package cl.gargolas.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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


}
