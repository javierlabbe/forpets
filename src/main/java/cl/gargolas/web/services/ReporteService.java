package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Reporte;

public interface ReporteService {
	public Boolean guardarReporte(Reporte reporte);
	public String eliminarReporte(Long id);
	public String actualizarReporte(Reporte reporte);
	public Reporte obtenerReporte(Long id);
	public List<Reporte> obtenerListaReportes();
}
