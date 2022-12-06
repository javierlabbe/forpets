package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Color;
import cl.gargolas.web.services.ColorServiceImpl;


@RestController
@RequestMapping("/apiColor")
public class ColorApiRestController {
	@Autowired
	private ColorServiceImpl colorServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarColor(@RequestBody Color color) {
		colorServiceImpl.guardarColor(color);
		return "guardado";
	}
	
	@RequestMapping("/eliminar") 
	public String eliminarColor(@RequestParam(value="id",required = false) Long id) { 
		return colorServiceImpl.eliminarColor(id);
	}
	
	@RequestMapping("/actualizar")
	public String actualizarColor(@RequestBody Color color) { 
		colorServiceImpl.actualizarColor(color);
		return "Color actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerColor(@RequestParam(value="id",required = false) Long id) { 
		Color color = colorServiceImpl.obtenerColor(id);
		return color.toString();
	}
	
	
	@GetMapping("/listar/colores") 
	public List<Color> obtenerListaColores() {
		return colorServiceImpl.obtenerListaColores();
	}

}
