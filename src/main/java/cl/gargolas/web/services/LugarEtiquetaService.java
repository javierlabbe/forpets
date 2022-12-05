package cl.gargolas.web.services;

import java.util.List;

import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Lugar_Etiqueta;


public interface LugarEtiquetaService {

	public Boolean guardarLugarEtiqueta(Lugar_Etiqueta lugarEtiqueta);
	public String eliminarLugarEtiqueta(Long id);
	public String actualizarLugarEtiqueta(Lugar_Etiqueta lugarEtiqueta);
	public Lugar_Etiqueta obtenerLugarEtiqueta(Long id);
	public List<Lugar_Etiqueta> obtenerListaLugarEtiqueta();
}
