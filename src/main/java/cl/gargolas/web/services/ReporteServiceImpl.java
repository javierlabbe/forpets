package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.repositories.ReporteRepository;

@Service
public class ReporteServiceImpl implements ReporteService{
	@Autowired
	private ReporteRepository reporteRepository;
	
	@Override
	public Boolean guardarReporte(Reporte reporte) {
		reporteRepository.save(reporte);
		return null;
	}

	@Override
	public String eliminarReporte(Long id) {
		reporteRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarReporte(Reporte reporte) {
		Boolean existe = reporteRepository.existsById(reporte.getIdReporte());
		return null;
	}

	@Override
	public Reporte obtenerReporte(Long id) {
		//Boolean exist = reporteRepository.existsById(id);
		return reporteRepository.findById(id).get();
	}

	@Override
	public List<Reporte> obtenerListaReportes() {
		return reporteRepository.findAll();
	}

}

