package cl.gargolas.web.services;

import java.util.List;

import cl.gargolas.web.models.Patron;

public interface PatronService {
	public Boolean guardarPatron(Patron patron);
	public String eliminarPatron(Long id);
	public String actualizarPatron(Patron patron);
	public Patron obtenerPatron(Long id);
	public List<Patron> obtenerListaPatrones();
}
