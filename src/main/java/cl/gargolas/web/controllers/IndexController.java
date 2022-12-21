package cl.gargolas.web.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@GetMapping("")
	public String home() {
		return "index.jsp";
	}
	
	
	@GetMapping("/login") 
	public String login() {
		return "login.jsp";
	}


//Validación para login
	@PostMapping("/login")
	public String ingresoUsuario(@ModelAttribute("email") String email,
			@ModelAttribute("password") String password, Model model, HttpSession session) {
		
		Boolean resultadoLogin = usuarioServiceImpl.ingresoUsuario(email, password);
		
		if (resultadoLogin) {
			Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);

			//se guarda informacion en session
			session.setAttribute("idUsuario", usuario.getIdUsuario());
			session.setAttribute("emailUsuario", email);
			
			return "redirect:/home";
		}else{
			model.addAttribute("msgError", "Error de autenticación, reingrese sus datos!"); 
			return "login.jsp";
		}
	}

	
	//LOGOUT
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("idUsuario")!=null) {
			session.invalidate();
		}
		return "redirect:/index/login";
	}
	
}
