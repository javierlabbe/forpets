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

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="tamanios")
public class Tamanio {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idTamanio;
	
	private String descripcion;
	
	@OneToMany(mappedBy = "tamanio", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private PerfilMascota perfilMascota;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	public Tamanio() {
		super();
	}

	public Integer getIdTamanio() {
		return idTamanio;
	}

	public void setIdTamanio(Integer idTamanio) {
		this.idTamanio = idTamanio;
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
		this.createdAt = new Date();
		}

	@PreUpdate
		protected void onUpdate(){
		this.updatedAt = new Date();
		}
	
}
