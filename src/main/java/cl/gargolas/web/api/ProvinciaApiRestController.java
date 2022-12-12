package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Provincia;
import cl.gargolas.web.services.ProvinciaServiceImpl;

@RestController
@RequestMapping("/apiProvincia")
public class ProvinciaApiRestController {
	@Autowired
	private ProvinciaServiceImpl provinciaServiceImpl;
	
	@RequestMapping("/guardar/provincia")
	public String guardarProvincia(@RequestBody Provincia provincia) {
		provinciaServiceImpl.guardarProvincia(provincia);
		return "Guardado";
	}

	@RequestMapping("/eliminar")
	public String eliminarProvincia(@RequestParam(value = "id", required = false) Long id) {
		return provinciaServiceImpl.eliminarProvincia(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarProvincia(@RequestBody Provincia provincia) {
		provinciaServiceImpl.actualizarProvincia(provincia);
		return "Provincia actualizada";
	}

	@RequestMapping("/obtener")
	public String obtenerProvincia(@RequestParam(value = "id", required = false) Long id) {
		Provincia provincia = provinciaServiceImpl.obtenerProvincia(id);
		return provincia.toString();
	}
	@GetMapping("/listar/provincias")
	public List<Provincia> obtenerListaProvinciaes(){
		return provinciaServiceImpl.obtenerListaProvincia();
	}
}