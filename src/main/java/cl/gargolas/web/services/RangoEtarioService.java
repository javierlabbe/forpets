package cl.gargolas.web.services;

import java.util.List;
import cl.gargolas.web.models.RangoEtario;
public interface RangoEtarioService {

	public Boolean guardarRangoEtario(RangoEtario rangoEtario);
	public String eliminarRangoEtario(Long id);
	public String actualizarRangoEtario(RangoEtario rangoEtario);
	public RangoEtario obtenerRangoEtario(Long id);
	public List<RangoEtario> obtenerListaRangoEtario();
}
