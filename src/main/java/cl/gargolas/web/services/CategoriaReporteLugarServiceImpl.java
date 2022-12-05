package cl.gargolas.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.gargolas.web.models.CategoriaReporteLugar;

import cl.gargolas.web.repositories.CategoriaReporteLugarRepository;

@Service
public class CategoriaReporteLugarServiceImpl implements CategoriaReporteLugarService{
	
	@Autowired
	CategoriaReporteLugarRepository categoriaReporteLugarRepository;
	
	@Override
	public Boolean guardarCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar) {
		categoriaReporteLugarRepository.save(categoriaReporteLugar);
		return null;
	}

	@Override
	public String eliminarCategoriaReporteLugar(Long id) {
		categoriaReporteLugarRepository.deleteById(id);
		return null;
	}
	
	@Override
	public String actualizarCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar) {
		Boolean existe = categoriaReporteLugarRepository.existsById(categoriaReporteLugar.getIdCategoria()); //aqui o en repository?
		if (existe) {
			categoriaReporteLugarRepository.save(categoriaReporteLugar);
		} else {
			
		}
		return null;
	}
	
	@Override
	public CategoriaReporteLugar obtenerCategoriaReporteLugar(Long id) {
		Boolean existe = categoriaReporteLugarRepository.existsById(id);
		
		if (existe) {
			return categoriaReporteLugarRepository.findById(id).get();			
		}
		return null;
	}
	
	@Override
	public List<CategoriaReporteLugar > obtenerListaCategoriaReporteLugar() {
		return categoriaReporteLugarRepository.findAll();
	}
}
