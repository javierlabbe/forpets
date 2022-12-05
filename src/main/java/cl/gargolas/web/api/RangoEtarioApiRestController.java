package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import cl.gargolas.web.models.RangoEtario;
import cl.gargolas.web.services.RangoEtarioServiceImpl;

@RestController
@RequestMapping("/apiRangoEtario")
public class RangoEtarioApiRestController  {

	@Autowired
	private RangoEtarioServiceImpl rangoEtarioServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarRangoEtario(@RequestBody RangoEtario rangoEtario) {
		rangoEtarioServiceImpl.guardarRangoEtario(rangoEtario);
		return rangoEtario.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarRangoEtario(@RequestParam(value="id", required = false) Long id) {
		rangoEtarioServiceImpl.eliminarRangoEtario(id);
		return "Rango Etario eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarRangoEtario(@RequestBody RangoEtario rangoEtario) { 
		if(rangoEtario.getIdRangoEtario()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = rangoEtarioServiceImpl.actualizarRangoEtario(rangoEtario); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerRangoEtario(@RequestParam(value="id", required = false) Long id) {
		RangoEtario  rangoEtario = rangoEtarioServiceImpl.obtenerRangoEtario(id);
		return rangoEtario.toString();
	}
	
	@GetMapping("/listar") 
	public List<RangoEtario> obtenerListaRangoEtarios() {
		return rangoEtarioServiceImpl.obtenerListaRangoEtario();
	}
	
}
