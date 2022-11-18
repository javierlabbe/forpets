package cl.gargolas.web.models;

import java.sql.Blob;
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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
@Table(name = "imagenes")

public class Imagen {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idImagen;
	
	@NotNull
	private Blob imagen;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	//relacion ManyToOne
	@JsonIgnore
	@OneToMany(mappedBy = "Registro_Imagen",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Imagen> imagenes;

	public Imagen() {
		super();
	}

	public Integer getIdImagen() {
		return idImagen;
	}

	public void setIdImagen(Integer idImagen) {
		this.idImagen = idImagen;
	}

	public Blob getImagen() {
		return imagen;
	}

	public void setImagen(Blob imagen) {
		this.imagen = imagen;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public List<Imagen> getImagenes() {
		return imagenes;
	}

	public void setImagenes(List<Imagen> imagenes) {
		this.imagenes = imagenes;
	}
	
}
