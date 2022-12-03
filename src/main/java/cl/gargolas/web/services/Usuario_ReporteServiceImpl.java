package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.Usuario_Reporte;
import cl.gargolas.web.repositories.Usuario_ReporteRepository;

@Service
public class Usuario_ReporteServiceImpl implements Usuario_ReporteService{
	@Autowired
	private Usuario_ReporteRepository usuario_ReporteRepository;

	@Override
	public Boolean guardarUsuario_Reporte(Usuario_Reporte usuario_reporte) {
		usuario_ReporteRepository.save(usuario_reporte);
		return null;
	}

	@Override
	public String eliminarUsuario_Reporte(Long id) {
		usuario_ReporteRepository.deleteById(id);
		return null;
	}

	@Override
	public String actualizarUsuario_Reporte(Usuario_Reporte usuario_reporte) {
		Boolean existe = usuario_ReporteRepository.existsById(usuario_reporte.getIdUsuarioReporte());
		return null;
	}

	@Override
	public Usuario_Reporte obtenerUsuario_Reporte(Long id) {
		//Boolean exist = usuario_ReporteRepository.existsBtId(id);
		return usuario_ReporteRepository.findById(id).get();
	}

	@Override
	public List<Usuario_Reporte> obtenerListaUsuarios_reportes() {
		return usuario_ReporteRepository.findAll();
	}
}