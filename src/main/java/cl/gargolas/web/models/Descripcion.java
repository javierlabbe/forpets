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
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "descripciones")
public class Descripcion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idDescripcion;

	@NotNull
	@Size(min = 1, max = 30)
	private String descripcion;

	@OneToMany(mappedBy = "descripcion", cascade = CascadeType.ALL, fetch =FetchType.EAGER )
	private List<Descripcion> descripccion;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

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
	
	
	
	public List<Descripcion> getDescripccion() {
		return descripccion;
	}

	public void setDescripccion(List<Descripcion> descripccion) {
		this.descripccion = descripccion;
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
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}