package cl.gargolas.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="regiones")
public class Region {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idRegion;
	
	@NotNull
	@Size(min=1,max=30)
	private String descripcion;
	
	
	public Region() {
		super();
	}

	public Integer getIdRegion() {
		return idRegion;
	}

	public void setIdRegion(Integer idRegion) {
		this.idRegion = idRegion;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
}
	
