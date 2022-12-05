package cl.gargolas.web.services;

import java.util.List;


import cl.gargolas.web.models.LugarInteres;

public interface LugarInteresService {

	public Boolean guardarLugarInteres(LugarInteres lugarInteres);
	public String eliminarLugarInteres(Long id);
	public String actualizarLugarInteres(LugarInteres lugarInteres);
	public LugarInteres obtenerLugarInteres(Long id);
	public List<LugarInteres> obtenerListaLugarInteres();
}
