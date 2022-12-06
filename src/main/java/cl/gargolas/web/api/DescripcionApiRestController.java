package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Descripcion;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.DescripcionServiceImpl;
import cl.gargolas.web.services.TamanioServiceImpl;

@RestController
@RequestMapping("/apiDescripcion")
public class DescripcionApiRestController {
	@Autowired
	private DescripcionServiceImpl descripcionServiceImpl;

	@RequestMapping("/guardar")
	public String guardarDescripcion(@RequestBody Descripcion descripcion) {
		descripcionServiceImpl.guardarDescripcion(descripcion);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarDescripcion(@RequestParam(value = "id", required = false) Long id) {
		return descripcionServiceImpl.eliminarDescripcion(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarDescripcion(@RequestBody Descripcion descripcion) { 
		descripcionServiceImpl.actualizarDescripcion(descripcion);
		return "Descripcion actualizada";
	}
	
	@RequestMapping("/obtener")
	public String obtenerDescripcion(@RequestParam(value="id",required = false) Long id) { 
		Descripcion descripcion = descripcionServiceImpl.obtenerDescripcion(id);
		return descripcion.toString();
	}
	
	
	@GetMapping("/listar/descripcion") 
	public List<Descripcion> obtenerListaDescripcion() {
		return descripcionServiceImpl.obtenerListaDescripcion();
	}

}
