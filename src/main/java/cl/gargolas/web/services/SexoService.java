package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Sexo;

public interface SexoService {
	public Boolean guardarSexo(Sexo sexo);
	public String eliminarSexo(Long id);
	public String actualizarSexo(Sexo sexo);
	public Sexo obtenerSexo(Long id);
	public List<Sexo> obtenerListaSexo();
}
