package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.models.Lugar_Etiqueta;
import cl.gargolas.web.services.EtiquetaServiceImpl;
import cl.gargolas.web.services.LugarEtiquetaServiceImpl;

@RestController
@RequestMapping("/apiLugarEtiqueta")
public class LugarEtiquetaApiRestController {

	@Autowired
	private LugarEtiquetaServiceImpl lugarEtiquetaServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarLugarEtiqueta(@RequestBody Lugar_Etiqueta lugarEtiqueta) {
		lugarEtiquetaServiceImpl.guardarLugarEtiqueta(lugarEtiqueta);
		return lugarEtiqueta.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarLugarEtiqueta(@RequestParam(value="id", required = false) Long id) {
		lugarEtiquetaServiceImpl.eliminarLugarEtiqueta(id);
		return "Etiqueta eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarLugarEtiqueta(@RequestBody Lugar_Etiqueta lugarEtiqueta) { 
		if(lugarEtiqueta.getIdLugarEtiqueta()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = lugarEtiquetaServiceImpl.actualizarLugarEtiqueta(lugarEtiqueta); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerLugarEtiqueta(@RequestParam(value="id", required = false) Long id) {
		Lugar_Etiqueta  lugaretiqueta = lugarEtiquetaServiceImpl.obtenerLugarEtiqueta(id);
		return lugaretiqueta.toString();
	}
	
	@GetMapping("/listar") 
	public List<Lugar_Etiqueta> obtenerListaEtiquetas() {
		return lugarEtiquetaServiceImpl.obtenerListaLugarEtiqueta();
	}
	
}
