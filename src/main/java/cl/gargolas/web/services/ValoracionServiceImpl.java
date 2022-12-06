package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cl.gargolas.web.models.Valoracion;
import cl.gargolas.web.repositories.TamanioRepository;
import cl.gargolas.web.repositories.ValoracionRepository;

public class ValoracionServiceImpl implements ValoracionService {
	@Autowired
	private ValoracionRepository valoracionRepository;
	
	@Override
	public Boolean guardarValoracion(Valoracion valoracion) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String eliminarValoracion(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String actualizarValoracion(Valoracion valoracion) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Valoracion obtenerValoracion(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Valoracion> obtenerListaValoracion() {
		// TODO Auto-generated method stub
		return null;
	}

}
