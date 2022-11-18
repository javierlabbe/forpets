package cl.gargolas.web.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.mysql.cj.jdbc.Blob;

@Entity
@Table(name="registros_imagenes")
public class Registro_Imagen {
	
	//Agregando imagen como FK, relacion manytoOne
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@Column(name="imagen_id")
	private Imagen imagen;
	
	//Agregando reporte como FK, relacion ManyToOne
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@Column(name="reporte_id")
	private Reporte reporte;
	
	//Agregando lugarInteres como FK, relacion ManyToOne
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@Column(name="lugarInteres_id")
	private LugarInteres lugarInteres;
	
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	
	public Imagen getImagen() {
		return imagen;
	}

	public void setImagen(Imagen imagen) {
		this.imagen = imagen;
	}

	public Reporte getReporte() {
		return reporte;
	}

	public void setReporte(Reporte reporte) {
		this.reporte = reporte;
	}
	
	public LugarInteres getLugarInteres() {
		return lugarInteres;
	}

	public void setLugarInteres(LugarInteres lugarInteres) {
		this.lugarInteres = lugarInteres;
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
