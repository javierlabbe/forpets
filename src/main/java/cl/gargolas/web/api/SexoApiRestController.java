package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Sexo;
import cl.gargolas.web.services.SexoServiceImpl;

@RestController
@RequestMapping("/apiSexo")
public class SexoApiRestController {
	@Autowired
	SexoServiceImpl sexoServiceImpl;
	
	@RequestMapping("/guardar/sexo")
	public String guardarSexo(@RequestBody Sexo sexo) {
		sexoServiceImpl.guardarSexo(sexo);
		return sexo.toString();
	}
	
	@RequestMapping("/eliminar/sexo")
	public String eliminarSexo(@RequestParam(value="id", required = false) Long id) {
		sexoServiceImpl.eliminarSexo(id);
		return "Sexo eliminado";
	}
	
	@RequestMapping("/actualizar/sexo")
	public String actualizarSexo(@RequestBody Sexo sexo) {
		sexoServiceImpl.actualizarSexo(sexo);
		return "Sexo actualizado";
	}
	
	@RequestMapping("/obtener/sexo")
	public String obtenerSexo(@RequestParam(value="id", required = false) Long id) {
		Sexo  sexo = sexoServiceImpl.obtenerSexo(id);
		return sexo.toString();
	}
	
	@GetMapping("/listar/sexo") 
	public List<Sexo> obtenerListaSexo() {
		return sexoServiceImpl.obtenerListaSexo();
	}
}
