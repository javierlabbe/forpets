package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Tamanio;

public interface TamanioService {
	public Boolean guardarTamanio(Tamanio tamanio);
	public String eliminarTamanio(Long id);
	public String actualizarTamanio(Tamanio tamanio);
	public Tamanio obtenerTamanio(Long id);
	public List<Tamanio> obtenerListaTamanios();
}
