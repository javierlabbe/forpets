package cl.gargolas.web.models;
//importaciones

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	//relacion OneToMany con reporte
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Reporte> Reportes;
	
	//relacion OneToMany con lugarInteres
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<LugarInteres> lugaresInteres;
	
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

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	//inserta la fecha del momento que se esta actualizando
	protected void onUpdate() {
		this.updatedAt = new Date();
	}



	public List<Reporte> getReportes() {
		return Reportes;
	}



	public void setReportes(List<Reporte> reportes) {
		Reportes = reportes;
	}



	public List<LugarInteres> getLugaresInteres() {
		return lugaresInteres;
	}



	public void setLugaresInteres(List<LugarInteres> lugaresInteres) {
		this.lugaresInteres = lugaresInteres;
	}



	
	

	
	
}
