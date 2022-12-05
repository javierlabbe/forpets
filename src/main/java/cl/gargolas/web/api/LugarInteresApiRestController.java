package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import cl.gargolas.web.models.LugarInteres;
import cl.gargolas.web.services.LugarInteresServiceImpl;

@RestController
@RequestMapping("/apiLugarInteres")
public class LugarInteresApiRestController  {

	@Autowired
	private LugarInteresServiceImpl lugarInteresServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarLugarInteres(@RequestBody LugarInteres lugarInteres) {
		lugarInteresServiceImpl.guardarLugarInteres(lugarInteres);
		return lugarInteres.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarLugarInteres(@RequestParam(value="id", required = false) Long id) {
		lugarInteresServiceImpl.eliminarLugarInteres(id);
		return "Etiqueta eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarLugarInteres(@RequestBody LugarInteres lugarInteres) { 
		if(lugarInteres.getIdLugar()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = lugarInteresServiceImpl.actualizarLugarInteres(lugarInteres); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerLugarInteres(@RequestParam(value="id", required = false) Long id) {
		LugarInteres  lugarInteres = lugarInteresServiceImpl.obtenerLugarInteres(id);
		return lugarInteres.toString();
	}
	
	@GetMapping("/listar") 
	public List<LugarInteres> obtenerListaLugarInteres() {
		return lugarInteresServiceImpl.obtenerListaLugarInteres();
	}
	
	
	
}
