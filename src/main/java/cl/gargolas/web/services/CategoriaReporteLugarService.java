package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.CategoriaReporteLugar;
import cl.gargolas.web.models.Etiqueta;

public interface CategoriaReporteLugarService {
	
	public Boolean guardarCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar);
	public String eliminarCategoriaReporteLugar(Long id);
	public String actualizarCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar);
	public CategoriaReporteLugar obtenerCategoriaReporteLugar(Long id);
	public List<CategoriaReporteLugar> obtenerListaCategoriaReporteLugar();
}
