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
@RequestMapping("/home")
public class HomeController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
//Http Session y control de acceso:
	@GetMapping("")
	public String login(Model model, HttpSession session) {

		if(session.getAttribute("idUsuario")!=null) {
			
			//datos de la session
			String email = (String) session.getAttribute("emailUsuario");
			Long idUsuario = (Long) session.getAttribute("idUsuario");
			//obtener y almacenar en variable
			List<Usuario> listaUsuarios= usuarioServiceImpl.listarUsuarios();
			//pasar lista de usuarios al jsp
			model.addAttribute("usuarios", listaUsuarios);
			
			return "home.jsp";

		}else {
			return "redirect:/index/login";
		}
	}
	
	@GetMapping("/perfil")
	public String perfilUser(HttpSession session, Model model) {
		Long idUsuario = (Long) session.getAttribute("idUsuario");
		Usuario user = usuarioServiceImpl.obtenerUsuario(idUsuario);
		model.addAttribute("nameUser", user.getNombre()+" "+user.getApellidos());
		model.addAttribute("emailUser", user.getEmail());
		model.addAttribute("celUser", user.getTelefono());
		model.addAttribute("dirUser", 
				user.getDireccion().getNombreCalle()+
				" "+user.getDireccion().getNumeroDireccion()+
				", "+user.getDireccion().getComuna().getDescripcion()+
				", "+user.getDireccion().getComuna().getProvincia().getRegion().getDescripcion());
		return "perfilUsuario.jsp";
	}
}	
