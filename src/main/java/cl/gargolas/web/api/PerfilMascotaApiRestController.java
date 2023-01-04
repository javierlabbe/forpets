package cl.gargolas.web.api;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.PerfilMascota;
import cl.gargolas.web.services.PerfilMascotaServiceImpl;

@RestController
@RequestMapping("/apiPerfilMascota")
public class PerfilMascotaApiRestController {
	@Autowired
	PerfilMascotaServiceImpl perfilMascotaServiceImpl;
	
	@RequestMapping("/guardar/perfilMascota")
	public String guardarPerfilMascota(@RequestBody PerfilMascota perfilMascota) {
		perfilMascotaServiceImpl.guardarPerfilMascota(perfilMascota);
		return perfilMascota.toString();
	}
	
	@RequestMapping("/eliminar/perfilMascota")
	public String eliminarPerfilMascota(@RequestParam(value="id", required = false) Long id) {
		perfilMascotaServiceImpl.eliminarPerfilMascota(id);
		return "PerfilMascota eliminado";
	}
	
	@RequestMapping("/actualizar/perfilMascota")
	public String actualizarPerfilMascota(@RequestBody PerfilMascota perfilMascota) {
		perfilMascotaServiceImpl.actualizarPerfilMascota(perfilMascota);
		return "PerfilMascota actualizado";
	}
	
	@RequestMapping("/obtener/perfilMascota")
	public String obtenerPerfilMascota(@RequestParam(value="id", required = false) Long id) {
		PerfilMascota  perfilMascota = perfilMascotaServiceImpl.obtenerPerfilMascota(id);
		return perfilMascota.toString();
	}
	
	@GetMapping("/listar/perfilMascota") 
	public List<PerfilMascota> obtenerListaPerfilMascotaes() {
		return perfilMascotaServiceImpl.obtenerListaPerfilMascota();
	}
	
	@GetMapping("/existImgMascota")
	public String existImgMascota(Long id) {
		PerfilMascota mascota = perfilMascotaServiceImpl.obtenerPerfilMascota(id);
		String fotoPerfilMascota = "";
		byte[] imagenFotoPerfil = (byte[]) mascota.getFoto();
		if (imagenFotoPerfil != null) {
			fotoPerfilMascota = Base64.getEncoder().encodeToString(imagenFotoPerfil);
		}
		return fotoPerfilMascota;
	}
	
	@GetMapping("/existImgPets")
	public Boolean existImgPets(Long id) {
		return perfilMascotaServiceImpl.fotoPerfil(id);
	}
}
