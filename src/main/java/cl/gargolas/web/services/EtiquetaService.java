package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Etiqueta;


public interface EtiquetaService {
	public Boolean guardarEtiqueta(Etiqueta etiqueta);
	public String eliminarEtiqueta(Long id);
	public String actualizarEtiqueta(Etiqueta etiqueta);
	public Etiqueta obtenerEtiqueta(Long id);
	public List<Etiqueta> obtenerListaEtiqueta();
}
