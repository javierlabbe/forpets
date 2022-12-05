package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Etiqueta;


import cl.gargolas.web.services.EtiquetaServiceImpl;


@RestController
@RequestMapping("/apiEtiqueta")
public class EtiquetaApiRestController {

	@Autowired
	private EtiquetaServiceImpl etiquetaServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarEtiqueta(@RequestBody Etiqueta etiqueta) {
		etiquetaServiceImpl.guardarEtiqueta(etiqueta);
		return etiqueta.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarEtiqueta(@RequestParam(value="id", required = false) Long id) {
		etiquetaServiceImpl.eliminarEtiqueta(id);
		return "Etiqueta eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarEtiqueta(@RequestBody Etiqueta etiqueta) { 
		if(etiqueta.getIdEtiqueta()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = etiquetaServiceImpl.actualizarEtiqueta(etiqueta); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerEtiqueta(@RequestParam(value="id", required = false) Long id) {
		Etiqueta  etiqueta = etiquetaServiceImpl.obtenerEtiqueta(id);
		return etiqueta.toString();
	}
	
	@GetMapping("/listar") 
	public List<Etiqueta> obtenerListaEtiquetas() {
		return etiquetaServiceImpl.obtenerListaEtiqueta();
	}
	
}
