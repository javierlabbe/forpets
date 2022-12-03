package cl.gargolas.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.gargolas.web.models.Usuario_Reporte;
import cl.gargolas.web.services.Usuario_ReporteServiceImpl;

@RestController
@RequestMapping("/apiUsuarioReporte")
public class Usuario_ReporteApiRestController {
	@Autowired
	private Usuario_ReporteServiceImpl usuario_ReporteServiceImpl;

	@RequestMapping("/guardar")
	public String guardarUsuario_Reporte(@RequestBody Usuario_Reporte usuario_Reporte) {
		usuario_ReporteServiceImpl.guardarUsuario_Reporte(usuario_Reporte);
		return usuario_Reporte.toString();
	}
	
	@RequestMapping("/eliminar")
	public String eliminarUsuario_Reporte(@RequestParam(value="id", required = false)Long id) {
		usuario_ReporteServiceImpl.eliminarUsuario_Reporte(id);
		return "UsuarioReporte eliminada";
	}
	
	@RequestMapping("/actualizar")
	public String actualizarUsuario_Reporte(@RequestBody Usuario_Reporte Usuario_Reporte) {
		usuario_ReporteServiceImpl.actualizarUsuario_Reporte(Usuario_Reporte);
		return "UsuarioReporte actualizada";
	}
	
	@RequestMapping("/obtener")
	public String obtenerUsuario_Reporte(@RequestParam(value="id", required = false)Long id) {
		Usuario_Reporte Usuario_Reporte = usuario_ReporteServiceImpl.obtenerUsuario_Reporte(id);
		return Usuario_Reporte.toString();
	}
	@GetMapping("/listar/usuarioReporte") 
	public List<Usuario_Reporte> obtenerListaUsuarios_Reportes() {
		return usuario_ReporteServiceImpl.obtenerListaUsuarios_reportes();
	}
}