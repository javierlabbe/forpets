package cl.gargolas.web.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/registro")
public class RegistroController {
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@GetMapping("/usuario")
	public String mostrarformulario() {
		return "registroUsuario.jsp";
	}
	
	@PostMapping("/usuario")
	public String guardarRegistro(@RequestParam("nombre") String nombre
			,@RequestParam("apellido1") String apellido1
			,@RequestParam("apellido2") String apellido2
			,@RequestParam("rut") String rut
			,@RequestParam ("birthday") @DateTimeFormat(pattern = "yyyy-MM-dd") Date birthday
			,@RequestParam("email") String email
			,@RequestParam("pass1") String pass1
			,@RequestParam("pass2") String pass2
			,@RequestParam("telefono") String telefono
			//,@RequestParam("calle") String calle
			//,@RequestParam("numDir") Long numDir
			//,@RequestParam("comuna") String comuna 
			//,@RequestParam("ciudad") String ciudad
			//,@RequestParam("region") String region
			, Model model) {
		
		Usuario usuario = new Usuario();
		usuario.setNombre(nombre);
		usuario.setApellidoPaterno(apellido1);
		usuario.setApellidoMaterno(apellido2);
		usuario.setRut(rut);
		usuario.setFechaNacimiento(birthday);
		usuario.setEmail(email);
		usuario.setPassword(pass1);
		usuario.setPassword2(pass2);
		usuario.setTelefono(telefono);
		
		usuarioServiceImpl.guardarUsuario(usuario);
		return "home.jsp";
	}
}
