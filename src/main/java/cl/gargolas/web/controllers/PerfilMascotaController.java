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
		
		
		
		if(session.getAttribute("idUsuario")!=null) {
			
			Long idMascotaSeleccionada = (Long) session.getAttribute("idMascota");
			Long idUsuario = (Long) session.getAttribute("idUsuario");
			Usuario usuario = usuarioServiceImpl.obtenerUsuario(idUsuario);
			PerfilMascota perfilMascota = perfilMascotaServiceImpl.obtenerPerfilMascota(idMascotaSeleccionada);
			
			
			String fotoPerfilMascota = "";
			byte[] imagenFotoPerfil = (byte[]) perfilMascota.getFoto();
			if (imagenFotoPerfil != null) {
				fotoPerfilMascota = Base64.getEncoder().encodeToString(imagenFotoPerfil);
			}
			
			model.addAttribute("FotoM", fotoPerfilMascota);
			model.addAttribute("NombreMascota", perfilMascota.getNombre().toLowerCase());
			model.addAttribute("NChip",perfilMascota.getNChip().toLowerCase());
			model.addAttribute("Especie", perfilMascota.getRaza().getEspecie().getDescripcion().toLowerCase());
			model.addAttribute("Color", perfilMascota.getColor().getDescripcion().toLowerCase());
			model.addAttribute("Tamanio", perfilMascota.getTamanio().getDescripcion().toLowerCase());
			model.addAttribute("Raza",perfilMascota.getRaza().getDescripcion().toLowerCase());
			model.addAttribute("Patron", perfilMascota.getPatron().getDescripcion().toLowerCase());
			model.addAttribute("Sexo", perfilMascota.getSexo().getDescripcion().toLowerCase());
			model.addAttribute("Descripcion", perfilMascota.getDescripcion().getDescripcion().toLowerCase());
			
			model.addAttribute("idMascota", idMascotaSeleccionada);
			
			
			return "perfilMascota.jsp";
			

		}else {
			
			return "redirect:/index/login";
		
		}
		
		
	}
	
	@PostMapping("")
	public String idMascota(@RequestParam("idMascota") Long id
			,HttpSession session) {
		session.setAttribute("idMascota", id);
		return "redirect:/perfilMascota";
	}
	
	
	@PostMapping("/actualizarFotoMascota")
	public String actualizarFoto(final @RequestParam("fotoPerfilPets") MultipartFile foto
			, HttpSession session) throws IOException {
		
		Long idMascota = (Long) session.getAttribute("idMascota");
		if (idMascota != null) {
			PerfilMascota pet = perfilMascotaServiceImpl.obtenerPerfilMascota(idMascota); 
			byte[] imagenPet = foto.getBytes();
			
			pet.setFoto(imagenPet);
			perfilMascotaServiceImpl.actualizarPerfilMascota(pet);
			
			return "redirect:/perfilMascota";
		} else {
			return "redirect:/perfilMascota";
		}
		
		
		
	}

}

