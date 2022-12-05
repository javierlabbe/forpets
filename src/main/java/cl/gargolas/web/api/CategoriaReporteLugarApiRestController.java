package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.CategoriaReporteLugar;
import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.services.CategoriaReporteLugarServiceImpl;

@RestController
@RequestMapping("/apiCategoriaReporteLugar")
public class CategoriaReporteLugarApiRestController {

	@Autowired
	private CategoriaReporteLugarServiceImpl categoriaReporteLugarServiceImpl;
	
	@RequestMapping("/guardar")
	public String guardarCategoriaReporteLugar(@RequestBody CategoriaReporteLugar categoriaReporteLugar) {
		categoriaReporteLugarServiceImpl.guardarCategoriaReporteLugar(categoriaReporteLugar);
		return categoriaReporteLugar.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarCategoriaReporteLugar(@RequestParam(value="id", required = false) Long id) {
		categoriaReporteLugarServiceImpl.eliminarCategoriaReporteLugar(id);
		return "Etiqueta eliminado";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarCategoriaReporteLugar(@RequestBody CategoriaReporteLugar categoriaReporteLugar) { 
		if(categoriaReporteLugar.getIdCategoria()!=null) { //validacion logica para ver si viene o no el id, pues para actualizar debe venir el id
			String mensaje = categoriaReporteLugarServiceImpl.actualizarCategoriaReporteLugar(categoriaReporteLugar); //o se puede crear el metodo en services para poder hacer actualizaciones			
			return mensaje;
		}
		return null;
	}
	
	@RequestMapping("/obtener")
	public String obtenerCategoriaReporteLugar(@RequestParam(value="id", required = false) Long id) {
		CategoriaReporteLugar  categoriaReporteLugar =  categoriaReporteLugarServiceImpl.obtenerCategoriaReporteLugar(id);
		return categoriaReporteLugar.toString();
	}
	
	@GetMapping("/listar") 
	public List<CategoriaReporteLugar> obtenerListaCategoriaReporteLugar() {
		return categoriaReporteLugarServiceImpl.obtenerListaCategoriaReporteLugar();
	}
	
}
	
	
	

