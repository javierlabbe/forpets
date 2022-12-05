package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.models.Registro_Imagen;
import cl.gargolas.web.services.EtiquetaServiceImpl;
import cl.gargolas.web.services.RegistroImagenServiceImpl;

@RestController
@RequestMapping("/apiRegistroImagen")
public class RegistroImagenApiRestController  {

	@Autowired
	private RegistroImagenServiceImpl registroImagenServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarRegistroImagen(@RequestBody Registro_Imagen registroImagen) {
		registroImagenServiceImpl.guardarRegistroImagen(registroImagen);
		return registroImagen.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarRegistroImagen(@RequestParam(value="id", required = false) Long id) {
		registroImagenServiceImpl.eliminarRegistroImagen(id);
		return "Etiqueta eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarRegistroImagen(@RequestBody Registro_Imagen registroImagen) { 
		if(registroImagen.getIdRegistroImagen()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = registroImagenServiceImpl.actualizarRegistroImagen(registroImagen); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerRegistroImagen(@RequestParam(value="id", required = false) Long id) {
		Registro_Imagen  registroImagen = registroImagenServiceImpl.obtenerRegistroImagen(id);
		return registroImagen.toString();
	}
	
	@GetMapping("/listar") 
	public List<Registro_Imagen> obtenerListaRegistroImagen() {
		return registroImagenServiceImpl.obtenerListaRegistroImagen();
	}
	
}
