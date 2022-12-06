package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.services.ReporteServiceImpl;

@RestController
@RequestMapping("/apiReporte")
public class ReporteApiRestController {
	@Autowired
	private ReporteServiceImpl reporteServiceImpl;

	@RequestMapping("/guardar")
	public String guardarReporte(@RequestBody Reporte reporte) {
		reporteServiceImpl.guardarReporte(reporte);
		return "guardado";
	}	

	@RequestMapping("/eliminar")
	public String eliminarReporte(@RequestParam(value = "id", required = false) Long id) {
		return reporteServiceImpl.eliminarReporte(id);
	}

	@RequestMapping("/actualizar")
	public String actualizarReporte(@RequestBody Reporte reporte) { 
		reporteServiceImpl.actualizarReporte(reporte);
		return "Tamanio actualizado";
	}
	
	@RequestMapping("/obtener")
	public String obtenerReporte(@RequestParam(value="id",required = false) Long id) { 
		Reporte reporte = reporteServiceImpl.obtenerReporte(id);
		return reporte.toString();
	}
	
	
	@GetMapping("/listar/reporte") 
	public List<Reporte> obtenerListaReporte() {
		return reporteServiceImpl.obtenerListaReportes();
	}

}