package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Direccion;
import cl.gargolas.web.services.DireccionServiceImpl;

@RestController
@RequestMapping("/apiDireccion")
public class DireccionApiRestController {

	@Autowired
	private DireccionServiceImpl direccionServiceImpl;
	
	@RequestMapping("/guardar/direccion")
	public String guardardireccion(@RequestBody Direccion direccion) {
		direccionServiceImpl.guardarDireccion(direccion);
		return direccion.toString();
	}
	
	@RequestMapping("/eliminar/direccion")
	public String eliminardireccion(@RequestParam(value="id", required = false)Long id) {
		direccionServiceImpl.eliminarDireccion(id);
		return "direccion eliminada";
	}
	
	@RequestMapping("/actualizar/direccion")
	public String actualizardireccion(@RequestBody Direccion direccion) {
		direccionServiceImpl.actualizarDireccion(direccion);
		return "direccion actualizada";
	}
	
	@RequestMapping("/obtener/direccion")
	public String obtenerdireccion(@RequestParam(value="id", required = false)Long id) {
		Direccion direccion = direccionServiceImpl.obtenerDireccion(id);
		return direccion.toString();
	}
	@GetMapping("/listar/direcciones") 
	public List<Direccion> obtenerListaDirecciones() {
		return direccionServiceImpl.obetenerListaDirecciones();
	}
}
