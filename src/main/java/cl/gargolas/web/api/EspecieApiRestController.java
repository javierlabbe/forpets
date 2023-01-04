package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Comuna;
import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Raza;
import cl.gargolas.web.services.EspecieServiceImpl;
import cl.gargolas.web.services.RazaServiceImpl;

@RestController
@RequestMapping("/apiEspecie")
public class EspecieApiRestController {
	
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
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
	
	
	  @RequestMapping(value = "/obtenerRaza", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE) 
	  public @ResponseBody List<Raza>
	  findAllByRazas(@RequestParam(value="id",required = false) Long id) {
		 return especieServiceImpl.listaRazas(id);
		 }
	  
	 
}
