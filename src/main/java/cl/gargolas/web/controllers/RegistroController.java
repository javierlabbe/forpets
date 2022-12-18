package cl.gargolas.web.controllers;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.models.Direccion;
import cl.gargolas.web.models.Region;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.ComunaServiceImpl;
import cl.gargolas.web.services.RegionServiceImpl;
import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/registro")
public class RegistroController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
		
	@Autowired
	RegionServiceImpl regionServiceImpl;
	
	@Autowired
	ComunaServiceImpl comunaServiceImpl;
	
	@GetMapping("/usuario")
	public String mostrarformulario(Model model) {
		List<Region> listaRegiones = regionServiceImpl.obtenerListaRegiones();
		//List<Comuna> listaComunas = regionServiceImpl.obtenerListaComunas(null);
		List<Comuna> listaComunas = comunaServiceImpl.obtenerListaComunas();
		
		model.addAttribute("listaRegiones", listaRegiones);
		model.addAttribute("listaComunas", listaComunas);
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
			,@RequestParam("calle") String calle
			,@RequestParam("numDir") Long numDir
			,@RequestParam("region") Long id_region
			,@RequestParam("comuna") Long id_comuna 
			, Model model) {
		
		if (pass1.equals(pass2)) {
			
			Comuna comuna = new Comuna();
			Direccion direccion = new Direccion();
			direccion.setNombreCalle(calle);
			direccion.setNumeroDireccion(numDir);
			direccion.setComuna(comuna);
			
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
			usuario.setDireccion(direccion);
			
			Boolean resultado = usuarioServiceImpl.guardarUsuario(usuario);
			
			if (resultado) {
				return "#"; //para ir al login
			} else {
				model.addAttribute("msgError", "Email o Rut registrado.");
				return "registroUsuario.jsp";
			}
		} else {
			model.addAttribute("msgError", "No coinciden contraseñas");
			return "registroUsuario.jsp";
		}
	}
	
	@GetMapping("/equipo") 
	public String equipo() {
		return "equipo.jsp";
	}
}
