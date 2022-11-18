package cl.gargolas.web.models;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;
//testing
@Entity 
@Table(name="lugares_Etiquetas")
public class Lugar_Etiqueta {
	//instantiate attributes
	
	@NotNull
	private Integer  idEtiqueta;
	
	@NotNull
	private Integer idLugar;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	//relacion ManyToOne, esta entidad se quedara con la columna FK 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="etiqueta_id")
	private Etiqueta etiqueta;
	
	//relacion ManyToOne, esta entidad se quedara con la columna FK 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="lugar_id")
	private LugarInteres lugarInteres;
	
	//empty constructor
	public Lugar_Etiqueta() {
		super();
	}
 
	//Getter y Setter
	
	public Integer getIdEtiqueta() {
		return idEtiqueta;
	}

	public void setIdEtiqueta(Integer idEtiqueta) {
		this.idEtiqueta = idEtiqueta;
	}

	public Integer getIdLugar() {
		return idLugar;
	}

	public void setIdLugar(Integer idLugar) {
		this.idLugar = idLugar;
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
