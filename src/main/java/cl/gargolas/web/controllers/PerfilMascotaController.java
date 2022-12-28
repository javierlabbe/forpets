package cl.gargolas.web.controllers;

 



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import cl.gargolas.web.models.PerfilMascota;
import cl.gargolas.web.models.Usuario;
import cl.gargolas.web.services.ColorServiceImpl;
import cl.gargolas.web.services.DescripcionServiceImpl;
import cl.gargolas.web.services.EspecieServiceImpl;
import cl.gargolas.web.services.ImagenServiceImpl;
import cl.gargolas.web.services.PatronServiceImpl;
import cl.gargolas.web.services.PerfilMascotaServiceImpl;
import cl.gargolas.web.services.RangoEtarioServiceImpl;
import cl.gargolas.web.services.RazaServiceImpl;
import cl.gargolas.web.services.SexoServiceImpl;
import cl.gargolas.web.services.TamanioServiceImpl;
import cl.gargolas.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/perfilMascota")
public class PerfilMascotaController {
	
	
	@Autowired
	PerfilMascotaServiceImpl perfilMascotaServiceImpl;
	
	
	@Autowired
	SexoServiceImpl sexoServiceImpl;
	
	@Autowired
	RangoEtarioServiceImpl rangoEtarioServiceImpl;
	
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
	@Autowired
	ColorServiceImpl colorServiceImpl;
	
	@Autowired
	PatronServiceImpl patronServiceImpl;
	
	@Autowired
	TamanioServiceImpl tamanioServiceImpl;
	
	@Autowired
	DescripcionServiceImpl descripcionServiceImpl;

	@Autowired
	ImagenServiceImpl imagenServiceImpl;
	
	@Autowired
	EspecieServiceImpl especieServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	
	@GetMapping("")
	public String mostrarPerfilMascota(Model model, HttpSession session) {
		Long idMascotaSeleccionada = 2L;
		Long idUsuario = (Long) session.getAttribute("idUsuario");
		Usuario usuario = usuarioServiceImpl.obtenerUsuario(idUsuario);
		PerfilMascota perfilMascota = perfilMascotaServiceImpl.obtenerPerfilMascota(idMascotaSeleccionada);
		//Long idColor = perfilMascota.getColor();
		//Color color = colorServiceImpl.obtenerColor();
		//List<PerfilMascota> ListaMascota = usuario.getPerfilMascota();
		
		
		//model.addAttribute("Apellido",usuario.getApellidos());
		model.addAttribute("NombreMascota", perfilMascota.getNombre());
		model.addAttribute("NChip",perfilMascota.getNChip());
		model.addAttribute("Especie", perfilMascota.getRaza().getEspecie().getDescripcion());
		model.addAttribute("Color", perfilMascota.getColor().getDescripcion());
		model.addAttribute("Tamanio", perfilMascota.getTamanio().getDescripcion());
		model.addAttribute("Raza",perfilMascota.getRaza().getDescripcion());
		model.addAttribute("Patron", perfilMascota.getPatron().getDescripcion());
		model.addAttribute("Sexo", perfilMascota.getSexo().getDescripcion());
		model.addAttribute("Descripcion", perfilMascota.getDescripcion().getDescripcion());
		
		
		return "perfilMascota.jsp";
		
	}
	
	
	
}
