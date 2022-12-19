package cl.gargolas.web.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Patron;
import cl.gargolas.web.models.Raza;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.DescripcionServiceImpl;
import cl.gargolas.web.services.EspecieServiceImpl;
import cl.gargolas.web.services.PatronServiceImpl;
import cl.gargolas.web.services.RazaServiceImpl;
import cl.gargolas.web.services.TamanioServiceImpl;

@Controller
@RequestMapping("/reporte")
public class CrearReporteController {
	
	@Autowired
	EspecieServiceImpl especieServiceImpl;
	
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
	@Autowired
	PatronServiceImpl patronServiceImpl;
	
	@Autowired
	TamanioServiceImpl tamanioServiceImpl;
	
	@Autowired
	DescripcionServiceImpl descripcionServiceImpl;
	
	@GetMapping("/reporte")
	public String mostrarReporte(Model model) {
		List<Especie> listaEspecies = especieServiceImpl.obtenerListaEspecies();
		//List<Raza> listaRazas = razaServiceImpl.obtenerListaRazas();
		//List<Patron> listaPatrones = patronServiceImpl.obtenerListaPatrones();
		//List<Tamanio> listaTamanios = tamanioServiceImpl.obtenerListaTamanios();
		
		model.addAttribute("listaEspecies", listaEspecies);
		//model.addAttribute("listaRazas", listaRazas);
		//model.addAttribute("listaPatrones", listaPatrones);
		//model.addAttribute("listaTamanios", listaTamanios);
		return "MapaPrincipal.jsp";
	}

	//@PostMapping("/reporte")
	//public String //guardarReporte(@RequestParam("tituloReporte") String tituloReporte,
			//@RequestParam("tipoReporte") String tipoReporte,
			//@RequestParam("nombreMascota") String nombreMascota,
			//@RequestParam("nChip") String nChip,
			//@RequestParam("especie") Long especie,
			//@RequestParam("raza") Long raza,
			//@RequestParam("patron") Long patron,
			//@RequestParam("tamanio") Long tamanio,
			//@RequestParam("descripcion") String descripcion,
			//@RequestParam("imagen") Blob imagen,
			//Model model
			//) {
		
	}

		

	
	
	
	
	
	
	
	
