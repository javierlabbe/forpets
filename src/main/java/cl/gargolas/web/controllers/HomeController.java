package cl.gargolas.web.controllers;

import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.models.Direccion;
import cl.gargolas.web.models.PerfilMascota;
import cl.gargolas.web.models.Region;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.ComunaServiceImpl;
import cl.gargolas.web.services.DireccionServiceImpl;
import cl.gargolas.web.services.RegionServiceImpl;
import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@Autowired
	RegionServiceImpl regionServiceImpl;
	
	@Autowired
	ComunaServiceImpl comunaServiceImpl;
	
	@Autowired
	DireccionServiceImpl direccionServiceImpl;
	
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
		List<PerfilMascota> listaMascotas = user.getPerfilMascota();
		List<Region> listaRegiones = regionServiceImpl.obtenerListaRegiones();
		List<Comuna> listaComunas = comunaServiceImpl.obtenerListaComunas();
		
		String fotoPerfilUser = "";
		byte[] imagenFotoPerfil = (byte[]) user.getFoto();
		if (imagenFotoPerfil != null) {
			fotoPerfilUser = Base64.getEncoder().encodeToString(imagenFotoPerfil);
		}
		
		model.addAttribute("listaRegiones", listaRegiones);
		model.addAttribute("listaComunas", listaComunas);
		model.addAttribute("fotoPerfil", fotoPerfilUser);
		model.addAttribute("idUser", idUsuario);
		model.addAttribute("nameUser", user.getNombre());
		model.addAttribute("lastNameUser", user.getApellidos());
		model.addAttribute("emailUser", user.getEmail());
		model.addAttribute("celUser", user.getTelefono());
		model.addAttribute("calleUser", user.getDireccion().getNombreCalle());
		model.addAttribute("numDirUser", user.getDireccion().getNumeroDireccion());
		model.addAttribute("comunaUser", user.getDireccion().getComuna().getDescripcion());
		model.addAttribute("regionUser", user.getDireccion().getComuna().getProvincia().getRegion().getDescripcion());
		model.addAttribute("listaMascotas", listaMascotas);
		return "perfilUsuario.jsp";
	}
	
	@PostMapping("/perfil")
	public String editarPerfil(final @RequestParam("fotoPerfilUser") MultipartFile foto
			, HttpSession session) throws IOException {
		Long idUsuario = (Long) session.getAttribute("idUsuario");
		Usuario user = usuarioServiceImpl.obtenerUsuario(idUsuario);
		byte[] imagenUser = foto.getBytes();
		
		user.setFoto(imagenUser);
		usuarioServiceImpl.actualizarUsuario(user);
		
		return "redirect:/home/perfil";
	}
	
	@PostMapping("/actualizar/perfil")
	public String guardarRegistro(@RequestParam("nombre") String nombre
			,@RequestParam("apellidos") String apellidos
			,@RequestParam("calle") String calle
			,@RequestParam("numDir") String numDir
			,@RequestParam("region") Long id_region
			,@RequestParam("comuna") Long id_comuna
			,HttpSession session) {
		
		Long idUsuario = (Long) session.getAttribute("idUsuario");
		Usuario user = usuarioServiceImpl.obtenerUsuario(idUsuario);
		Direccion direccion = user.getDireccion();
		
		if (nombre.isBlank() == false) {
			user.setNombre(nombre);
		} 
		if (apellidos.isBlank() == false) {
			user.setApellidos(apellidos);
		}
		if (calle.isBlank() == false & numDir.isBlank() == false & id_region != 0L & id_comuna != 0L) {
			direccion.setNumeroDireccion(numDir);
			direccion.setComuna(comunaServiceImpl.obtenerComuna(id_comuna));
			direccion.setNombreCalle(calle);
			direccionServiceImpl.actualizarDireccion(direccion);
			user.setDireccion(direccion);
		}
		
		usuarioServiceImpl.actualizarUsuario(user);
	
		return "redirect:/home/perfil";
	}
	
}	
