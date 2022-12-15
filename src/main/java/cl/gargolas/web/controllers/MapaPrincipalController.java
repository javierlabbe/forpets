package cl.gargolas.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.gargolas.web.services.ReporteServiceImpl;

@Controller
@RequestMapping("/mapa")
public class MapaPrincipalController {

	@Autowired
	ReporteServiceImpl reporteServiceImpl;
	
	@GetMapping("/mapaPrincipal")
	public String mostrarMapaPrincipal() {
		return "MapaPrincipal.jsp";
	}
}
