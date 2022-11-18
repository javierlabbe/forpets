package cl.gargolas.web.models;

import java.util.Date;

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
@Table(name="razas")
public class Raza {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idRaza;
	
	@NotNull
	@Size(min=3,max=150) // Ver razas para saber la más larga y corta
	private String descripcion;
	
	@OneToMany(mappedBy = "raza", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private PerfilMascota perfilMascota;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	//constructor
	public Raza() {
		super();
	}
	//getters and setters
	
	public Long getIdRaza() {
		return idRaza;
	}

	public void setIdRaza(Long idRaza) {
		this.idRaza = idRaza;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public PerfilMascota getPerfilMascota() {
		return perfilMascota;
	}

	public void setPerfilMascota(PerfilMascota perfilMascota) {
		this.perfilMascota = perfilMascota;
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
	protected void onCreate(){
		this.setUpdatedAt(new Date());
	}
	
	@PreUpdate
	protected void onUpdate(){
		this.setUpdatedAt(new Date());
	}
	
}
