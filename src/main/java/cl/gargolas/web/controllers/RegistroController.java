package cl.gargolas.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/registro")
public class RegistroController {
	@GetMapping("")
	public String mostrarformulario() {
		return "registroUsuario.jsp";
	}
}
