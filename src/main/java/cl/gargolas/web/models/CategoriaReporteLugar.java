package cl.gargolas.web.models;
//importaciones

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

//Crecion de la clase o entidad
@Entity
@Table(name="categoriasReportesLugares")
public class CategoriaReporteLugar {
	
	
	//Intancias de atributos entidad
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idCategoria;
	@NotNull
	@Size(min=0, max=201)
	private String Descripcion;
	
	
	//contructores
	public CategoriaReporteLugar() {
		super();
	}

	// Getter y Setter 
	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getDescripcion() {
		return Descripcion;
	}

	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
	

	

	
	
}
