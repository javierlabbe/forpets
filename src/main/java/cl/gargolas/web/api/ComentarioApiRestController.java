package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.Comentario;
import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.services.ComentarioServiceImpl;
import cl.gargolas.web.services.ReporteServiceImpl;

public class ComentarioApiRestController {

	@Autowired
	private ComentarioServiceImpl comentarioServiceImpl;

	@RequestMapping("/guardar")
	public String guardarComentario(@RequestBody Comentario comentario) {
		comentarioServiceImpl.guardarComentario(comentario);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarComentario(@RequestParam(value = "id", required = false) Long id) {
		return comentarioServiceImpl.eliminarComentario(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarReporte(@RequestBody Comentario comentario) { 
		comentarioServiceImpl.actualizarComentario(comentario);
		return "Tamanio actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerComentario(@RequestParam(value="id",required = false) Long id) { 
		Comentario comentario = comentarioServiceImpl.obtenerComentario(id);
		return comentario.toString();
	}
	
	
	@GetMapping("/listar/comentario") 
	public List<Comentario> obtenerListaComentario() {
		return comentarioServiceImpl.obtenerListaComentario();
	}
}
