package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.models.Ubicacion;
import cl.gargolas.web.services.TamanioServiceImpl;
import cl.gargolas.web.services.UbicacionServiceImpl;

@RestController
@RequestMapping("/apiUbicacion")

public class UbicacionApiRestController {
	@Autowired
	private UbicacionServiceImpl ubicacionServiceImpl;

	@RequestMapping("/guardar")
	public String guardarUbicacion(@RequestBody Ubicacion ubicacion) {
		ubicacionServiceImpl.guardarUbicacion(ubicacion);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarUbicacion(@RequestParam(value = "id", required = false) Long id) {
		return ubicacionServiceImpl.eliminarUbicacion(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarUbicacion(@RequestBody Ubicacion ubicacion) { 
		ubicacionServiceImpl.actualizarUbicacion(ubicacion);
		return "Ubicacion actualizada";
	}
	
	@RequestMapping("/obtener")
	public String obtenerUbicacion(@RequestParam(value="id",required = false) Long id) { 
		Ubicacion ubicacion = ubicacionServiceImpl.obtenerUbicacion(id);
		return ubicacion.toString();
	}
	
	
	@GetMapping("/listar/ubicacion") 
	public List<Ubicacion> obtenerListaUbicacion() {
		return ubicacionServiceImpl.obtenerListaUbicacion();
	}
}
