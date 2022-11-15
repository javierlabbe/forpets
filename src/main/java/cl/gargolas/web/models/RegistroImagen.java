package cl.gargolas.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.mysql.cj.jdbc.Blob;

@Entity
@Table(name="registrosImagenes")
public class RegistroImagen {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idImagen;
	
	private Blob imagen;

	public RegistroImagen() {
		super();
	}

	public Integer getIdImagen() {
		return idImagen;
	}

	public void setIdImagen(Integer idImagen) {
		this.idImagen = idImagen;
	}

	public Blob getImagen() {
		return imagen;
	}

	public void setImagen(Blob imagen) {
		this.imagen = imagen;
	}
	
	
}
