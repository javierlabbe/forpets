package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.models.Valoracion;
import cl.gargolas.web.services.ValoracionServiceImpl;

@RestController
@RequestMapping("/apiValoracion")
public class ValoracionApiRestcontroller {
	@Autowired
	private ValoracionServiceImpl valoracionServiceImpl;

	@RequestMapping("/guardar")
	public String guardarValoracion(@RequestBody Valoracion valoracion) {
		valoracionServiceImpl.guardarValoracion(valoracion);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarValoracion(@RequestParam(value = "id", required = false) Long id) {
		return valoracionServiceImpl.eliminarValoracion(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarValoracion(@RequestBody Valoracion valoracion) { 
		valoracionServiceImpl.actualizarValoracion(valoracion);
		return "Tamanio actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerValoracion(@RequestParam(value="id",required = false) Long id) { 
		Valoracion valoracion = valoracionServiceImpl.obtenerValoracion(id);
		return valoracion.toString();
	}
	
	
	@GetMapping("/listar/valoracion") 
	public List<Valoracion> obtenerListaTamanio() {
		return valoracionServiceImpl.obtenerListaValoracion();
	}
}
