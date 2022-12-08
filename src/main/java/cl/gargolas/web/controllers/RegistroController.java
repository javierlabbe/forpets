package cl.gargolas.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/registro")
public class RegistroController {
	@GetMapping("/usuario")
	public String mostrarformulario() {
		return "registroUsuario.jsp";
	}
	
	@PostMapping("/usuario")
	public String guardarRegistro(@RequestParam("nombre") String nombre
			,@RequestParam("apellido1") String apellido1
			,@RequestParam("apellido2") String apellido2
			,@RequestParam("rut") String rut
			,@RequestParam("birthdate") String birthdate
			,@RequestParam("email") String Email
			,@RequestParam("telefono") String telefono
			,@RequestParam("calle") String calle
			,@RequestParam("numDir") Long numDir
			,@RequestParam("comuna") String comuna 
			,@RequestParam("ciudad") String ciudad
			,@RequestParam("region") String region
			, Model model) {
		return "";
	}
}
