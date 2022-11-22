package cl.gargolas.web.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "usarios_reportes")
public class Usuario_Reporte {

	// relacion ManyToOne, esta entidad se quedara con la columna FK
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "comentario_id")
	private Comentario comentario;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ubicacion_id")
	private Ubicacion ubicacion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "descripcion_id")
	private Descripcion descripcion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "reporte_id")
	private Reporte reporte;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "lugar_id")
	private LugarInteres lugarInteres;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "reporte_id")
	private Usuario usuario;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	// relacion ManyToOne, esta entidad se quedara con la columna FK
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "etiqueta_id")
	private Etiqueta etiqueta;

	
	public Usuario_Reporte() {
		super();
	}


	public Comentario getComentario() {
		return comentario;
	}


	public void setComentario(Comentario comentario) {
		this.comentario = comentario;
	}


	public Ubicacion getUbicacion() {
		return ubicacion;
	}


	public void setUbicacion(Ubicacion ubicacion) {
		this.ubicacion = ubicacion;
	}


	public Descripcion getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(Descripcion descripcion) {
		this.descripcion = descripcion;
	}


	public Reporte getReporte() {
		return reporte;
	}


	public void setReporte(Reporte reporte) {
		this.reporte = reporte;
	}


	public LugarInteres getLugar() {
		return lugarInteres;
	}


	public void setLugar(LugarInteres lugar) {
		this.lugarInteres = lugar;
	}


	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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


	public Etiqueta getEtiqueta() {
		return etiqueta;
	}


	public void setEtiqueta(Etiqueta etiqueta) {
		this.etiqueta = etiqueta;
	}

	
	
	
	

}
