package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.services.ComunaServiceImpl;

@RestController
@RequestMapping("/apiComuna")
public class ComunaApiRestController {
	@Autowired
	private ComunaServiceImpl comunaServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarComuna(@RequestBody Comuna comuna) {
		comunaServiceImpl.guardarComuna(comuna);
		return "Guardado";
	}
	
	@RequestMapping("/eliminar")
	public String eliminarComuna(@RequestParam(value="id", required = false)Long id) {
		return comunaServiceImpl.eliminarComuna(id);
	}
	
	@RequestMapping("/actualizar")
	public String actualizarComuna(@RequestBody Comuna comuna) {
		comunaServiceImpl.actualizarComuna(comuna);
		return "Comuna actualizada";
	}
	
	@RequestMapping("/obtener")
	public String obtenerComuna(@RequestParam(value="id", required = false)Long id) {
		Comuna comuna = comunaServiceImpl.obtenerComuna(id);
		return comuna.toString();
	}
	@GetMapping("/listar/comunas") 
	public List<Comuna> obtenerListaComunas() {
		return comunaServiceImpl.obtenerListaComunas();
	}
}