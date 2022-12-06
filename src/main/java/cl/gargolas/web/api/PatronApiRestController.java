package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Patron;
import cl.gargolas.web.services.PatronServiceImpl;


@RestController
@RequestMapping("/apiPatron")
public class PatronApiRestController {
	@Autowired
	PatronServiceImpl patronServiceImpl;
	
	@RequestMapping("/guardar/patron")
	public String guardarPatron(@RequestBody Patron patron) {
		patronServiceImpl.guardarPatron(patron);
		return patron.toString();
	}
	
	@RequestMapping("/eliminar/patron")
	public String eliminarPatron(@RequestParam(value="id", required = false) Long id) {
		patronServiceImpl.eliminarPatron(id);
		return "Patron eliminado";
	}
	
	@RequestMapping("/actualizar/patron")
	public String actualizarPatron(@RequestBody Patron patron) {
		patronServiceImpl.actualizarPatron(patron);
		return "Patron actualizado";
	}
	
	@RequestMapping("/obtener/patron")
	public String obtenerPatron(@RequestParam(value="id", required = false) Long id) {
		Patron  patron = patronServiceImpl.obtenerPatron(id);
		return patron.toString();
	}
	
	@GetMapping("/listar/patron") 
	public List<Patron> obtenerListaPatrones() {
		return patronServiceImpl.obtenerListaPatrones();
	}
}
