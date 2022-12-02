package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.TamanioServiceImpl;

@RestController
@RequestMapping("/apiTamanio")
public class TamanioApiRestController {
	@Autowired
	private TamanioServiceImpl tamanioServiceImpl;

	@RequestMapping("/guardar")
	public String guardarTamanio(@RequestBody Tamanio tamanio) {
		tamanioServiceImpl.guardarTamanio(tamanio);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarTamanio(@RequestParam(value = "id", required = false) Long id) {
		return tamanioServiceImpl.eliminarTamanio(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarTamanio(@RequestBody Tamanio tamanio) { 
		tamanioServiceImpl.actualizarTamanio(tamanio);
		return "Tamanio actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerTamanio(@RequestParam(value="id",required = false) Long id) { 
		Tamanio tamanio = tamanioServiceImpl.obtenerTamanio(id);
		return tamanio.toString();
	}
	
	
	@GetMapping("/listar/tamanio") 
	public List<Tamanio> obtenerListaTamanio() {
		return tamanioServiceImpl.obtenerListaTamanios();
	}

}