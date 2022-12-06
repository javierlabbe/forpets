package cl.gargolas.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Raza;
import cl.gargolas.web.services.RazaServiceImpl;

@RestController
@RequestMapping("/apiRaza")
public class RazaApiRestController {
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
	@RequestMapping("/guardar/raza")
	public String guardarUsuario(@RequestBody Raza raza) {
		razaServiceImpl.guardarRaza(raza);
		return raza.toString();
	}
	
	@RequestMapping("/eliminar/raza")
	public String eliminarRaza(@RequestParam(value="id", required = false) Long id) {
		razaServiceImpl.eliminarRaza(id);
		return "Raza eliminada";
	}
	
	@RequestMapping("/actualizar/raza")
	public String actualizarRaza(@RequestBody Raza raza) {
		razaServiceImpl.actualizarRaza(raza);
		return "Raza actualizada";
	}
	
	@RequestMapping("/obtener/raza")
	public String obtenerRaza(@RequestParam(value="id", required = false) Long id) {
		Raza  raza = razaServiceImpl.obtenerRaza(id);
		return raza.toString();
	}
}
