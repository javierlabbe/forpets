package cl.gargolas.web.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

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
	
	@NotNull
	@Size(min=3, max=3)
	private Integer idCategoria;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
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
	
}
