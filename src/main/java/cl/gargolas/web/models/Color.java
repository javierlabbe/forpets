package cl.gargolas.web.models;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="colores")
public class Color {
	private Integer idColor;
	private String descripcion;
	
	public Color() {
		super();
	}

	public Integer getIdColor() {
		return idColor;
	}

	public void setIdColor(Integer idColor) {
		this.idColor = idColor;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	

}
