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

import com.fasterxml.jackson.annotation.JsonIgnore;
//testing
@Entity
@Table(name="comentarios")
public class Comentario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idComentario;
	
	@NotNull
	@Size(min=1,max=30)
	private String descripcion; 
	
	@JsonIgnore
	@OneToMany(mappedBy = "comentario",cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Usuario_Reporte> usuario_Reporte ;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;

	public Comentario() {
		super();
	}
	
	
	public Integer getIdComentario() {
		return idComentario;
	}

	public void setIdComentario(Integer idComentario) {
		this.idComentario = idComentario;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	

	public List<Usuario_Reporte> getUsuario_Reporte() {
		return usuario_Reporte;
	}


	public void setUsuario_Reporte(List<Usuario_Reporte> usuario_Reporte) {
		this.usuario_Reporte = usuario_Reporte;
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
