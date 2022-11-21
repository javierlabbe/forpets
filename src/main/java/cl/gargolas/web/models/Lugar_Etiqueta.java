package cl.gargolas.web.models;

import java.util.Date;
import java.util.List;

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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
//testing
@Entity 
@Table(name="lugares_Etiquetas")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
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
