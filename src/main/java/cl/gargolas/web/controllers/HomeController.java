package cl.gargolas.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@GetMapping("")
	public String home() {
		return "home.jsp";
	}


//Validación para login
	@PostMapping("")
	public String ingresoUsuario(@RequestParam("email") String email,
			@RequestParam("password") String password,Model model) {
		
		Boolean resultadoLogin = usuarioServiceImpl.ingresoUsuario(email, password);
		
		if (resultadoLogin) { 
			return "redirect:/mapa/mapaPrincipal";
		}else{
			model.addAttribute("msgError", "Error de autenticación, reingrese sus datos!"); 
			return "/home";
	
		}
	}
}
