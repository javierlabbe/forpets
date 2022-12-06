package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Usuario_Reporte;

public interface Usuario_ReporteService {
	public Boolean guardarUsuario_Reporte(Usuario_Reporte usuario_reporte);
	public String eliminarUsuario_Reporte(Long id);
	public String actualizarUsuario_Reporte(Usuario_Reporte usuario_reporte);
	public Usuario_Reporte obtenerUsuario_Reporte(Long id);
	public List<Usuario_Reporte> obtenerListaUsuarios_reportes();
}
