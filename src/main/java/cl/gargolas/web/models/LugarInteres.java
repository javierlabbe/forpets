package cl.gargolas.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="LugaresInteres")
public class LugarInteres {
	// Instantiate Attributes
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idLugar;
	
	@NotNull
	@Size(min=3, max=31)
	private String titulo;
	
	@NotNull
	@Size(min=3, max=3)
	private Integer idCategoria;

	// empty constructor 
	public LugarInteres() {
		super();
	}

	
	
	//Getter y Setter
	public Integer getIdLugar() {
		return idLugar;
	}

	
	public void setIdLugar(Integer idLugar) {
		this.idLugar = idLugar;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}
	
	
}
