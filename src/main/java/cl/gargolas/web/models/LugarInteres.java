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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="lugaresInteres")
public class LugarInteres {
	// Instantiate Attributes
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idLugar;
	
	@NotNull
	@Size(min=3, max=31)
	private String titulo;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	//relacion ManyToOne
	@JsonIgnore
	@OneToMany(mappedBy = "lugarInteres",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<LugarInteres> lugaresInteres;
	
	//Agregando CategoriaReporteLugar como FK, relacion ManyToOne
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@Column(name="CategoriaReporteLugar_id")
	private CategoriaReporteLugar categoriaReporteLugar;
	
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



	public List<LugarInteres> getLugaresInteres() {
		return lugaresInteres;
	}



	public void setLugaresInteres(List<LugarInteres> lugaresInteres) {
		this.lugaresInteres = lugaresInteres;
	}



	public CategoriaReporteLugar getCategoriaReporteLugar() {
		return categoriaReporteLugar;
	}



	public void setCategoriaReporteLugar(CategoriaReporteLugar categoriaReporteLugar) {
		this.categoriaReporteLugar = categoriaReporteLugar;
	}
	
	
}
