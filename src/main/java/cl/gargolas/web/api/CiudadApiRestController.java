package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Ciudad;
import cl.gargolas.web.services.CiudadServiceImpl;

@RestController
@RequestMapping("/apiCiudad")
public class CiudadApiRestController {
	@Autowired
	private CiudadServiceImpl ciudadServiceImpl;
	
	@RequestMapping("/guardar/ciudad")
	public String guardarCiudad(@RequestBody Ciudad ciudad) {
		ciudadServiceImpl.guardarCiudad(ciudad);
		return "Guardado";
	}

	@RequestMapping("/eliminar")
	public String eliminarCiudad(@RequestParam(value = "id", required = false) Long id) {
		return ciudadServiceImpl.eliminarCiudad(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarCiudad(@RequestBody Ciudad ciudad) {
		ciudadServiceImpl.actualizarCiudad(ciudad);
		return "Ciudad actualizada";
	}

	@RequestMapping("/obtener")
	public String obtenerCiudad(@RequestParam(value = "id", required = false) Long id) {
		Ciudad ciudad = ciudadServiceImpl.obtenerCiudad(id);
		return ciudad.toString();
	}
	@GetMapping("/listar/ciudades")
	public List<Ciudad> obtenerListaCiudades(){
		return ciudadServiceImpl.obtenerListaCiudad();
	}
}