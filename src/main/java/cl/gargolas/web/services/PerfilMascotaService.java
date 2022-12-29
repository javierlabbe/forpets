package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.PerfilMascota;

public interface PerfilMascotaService {
	public Boolean guardarPerfilMascota(PerfilMascota perfilMascota);
	public String eliminarPerfilMascota(Long id);
	public String actualizarPerfilMascota(PerfilMascota perfilMascota);
	public PerfilMascota obtenerPerfilMascota(Long id);
	public List<PerfilMascota> obtenerListaPerfilMascota();
	Boolean fotoPerfil(Long id);
}
