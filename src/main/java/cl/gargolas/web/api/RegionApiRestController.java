package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Region;
import cl.gargolas.web.services.RegionServiceImpl;

@RestController
@RequestMapping("/apiRegion")
public class RegionApiRestController {

	@Autowired
	private RegionServiceImpl regionServiceImpl;
	
	@RequestMapping("/guardar/region")
	public String guardarRegion(@RequestBody Region region) {
		regionServiceImpl.guardarRegion(region);
		return "Guardado";
	}
	
	@RequestMapping("/eliminar/region")
	public String eliminarRegion(@RequestParam(value="id", required = false)Long id) {
		return regionServiceImpl.eliminarRegion(id);
	}
	
	@RequestMapping("/actualizar/region")
	public String actualizarRegion(@RequestBody Region region) {
		regionServiceImpl.actualizarRegion(region);
		return "Region actualizada";
	}
	
	@RequestMapping("/obtener/region")
	public String obtenerRegion(@RequestParam(value="id", required = false)Long id) {
		Region region = regionServiceImpl.obtenerRegion(id);
		return region.toString();
	}
	@GetMapping("/listar/regiones") 
	public List<Region> obtenerListaRegiones() {
		return regionServiceImpl.obtenerListaRegiones();
	}
}
