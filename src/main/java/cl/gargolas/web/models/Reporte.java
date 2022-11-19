package cl.gargolas.web.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="reportes")
public class Reporte {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idReporte;
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	//relacion OneToMany
	@JsonIgnore
	@OneToMany(mappedBy = "reporte",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Registro_Imagen> registro_imagenes;
	
	//Agregando CategoriaReporteLugar como FK, relacion ManyToOne
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="CategoriaReporteLugar_id")
	private CategoriaReporteLugar categoriaReporteLugar;
	
	public Reporte() {
		super();
	}
	
	public Integer getIdReporte() {
		return idReporte;
	}



	public void setIdReporte(Integer idReporte) {
		this.idReporte = idReporte;
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
	

	public List<Registro_Imagen> getRegistro_imagenes() {
		return registro_imagenes;
	}

	public void setRegistro_imagenes(List<Registro_Imagen> registro_imagenes) {
		this.registro_imagenes = registro_imagenes;
	}

	public CategoriaReporteLugar getCategoriaReporteLugar() {
		return categoriaReporteLugar;
	}

	public void setCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar) {
		this.categoriaReporteLugar = categoriaReporteLugar;
	}

	@PrePersist
	protected void onCreate(){
	this.createdAt = new Date();
	}
	@PreUpdate
	protected void onUpdate(){
	this.updatedAt = new Date();
	}
}
