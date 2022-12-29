package cl.gargolas.web.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Raza;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.ReporteServiceImpl;

@Controller
@RequestMapping("/mapa")
public class MapaPrincipalController {

	@Autowired
	ReporteServiceImpl reporteServiceImpl;
	
	@GetMapping("/principal")
	public String mostrarMapaPrincipal() {
		return "MapaPrincipal.jsp";
	}
}

