package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.ImagenServiceImpl;


@RestController
@RequestMapping("/apiImagen")
public class ImagenApiRestController {
	@Autowired
	private ImagenServiceImpl imagenServiceImpl;

	@RequestMapping("/guardar")
	public String guardarImagen(@RequestBody Imagen imagen) {
		imagenServiceImpl.guardarImagen(imagen);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarImagen(@RequestParam(value = "id", required = false) Long id) {
		return imagenServiceImpl.eliminarImagen(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarImagen(@RequestBody Imagen imagen) { 
		imagenServiceImpl.actualizarImagen(imagen);
		return "Imagen actualizada";
	}
	
	@RequestMapping("/obtener")
	public String obtenerTamanio(@RequestParam(value="id",required = false) Long id) { 
		Imagen imagen = imagenServiceImpl.obtenerImagen(id);
		return imagen.toString();
	}
	
	
	@GetMapping("/listar/imagen") 
	public List<Imagen> obtenerListaImagen() {
		return imagenServiceImpl.obtenerListaImagenes();
	}
	
}
