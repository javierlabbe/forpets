package cl.gargolas.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Especie;
import cl.gargolas.web.services.EspecieServiceImpl;

@RestController
@RequestMapping("/apiEspecie")
public class EspecieApiRestController {
	@Autowired
	EspecieServiceImpl especieServiceImpl;
	
	@RequestMapping("/guardar/especie")
	public String guardarUsuario(@RequestBody Especie especie) {
		especieServiceImpl.guardarEspecie(especie);
		return especie.toString();
	}
	
	@RequestMapping("/eliminar/especie")
	public String eliminarEspecie(@RequestParam(value="id", required = false) Long id) {
		especieServiceImpl.eliminarEspecie(id);
		return "Especie eliminada";
	}
	
	@RequestMapping("/actualizar/especie")
	public String actualizarEspecie(@RequestBody Especie especie) {
		especieServiceImpl.actualizarEspecie(especie);
		return "Especie actualizada";
	}
	
	@RequestMapping("/obtener/especie")
	public String obtenerEspecie(@RequestParam(value="id", required = false) Long id) {
		Especie  especie = especieServiceImpl.obtenerEspecie(id);
		return especie.toString();
	}
}