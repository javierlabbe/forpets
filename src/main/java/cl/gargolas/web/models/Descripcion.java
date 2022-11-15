package cl.gargolas.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "descripcion")
public class Descripcion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idDescripcion;
	
	@NotNull
	@Size(min = 1, max = 30)
	private String descripcion;
	
	public Descripcion() {
		super();
	}

	public Integer getIdDescripcion() {
		return idDescripcion;
	}

	public void setIdDescripcion(Integer idDescripcion) {
		this.idDescripcion = idDescripcion;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
}
