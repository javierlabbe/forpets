package cl.gargolas.web.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "usarios_reportes")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Usuario_Reporte {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idUsuarioReporte;
	// relacion ManyToOne, esta entidad se quedara con la columna FK

	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "comentario_id")
	private Comentario comentario;

	/*
	 * @JsonIgnore
	 * 
	 * @OneToMany(mappedBy = "usuario_reporte", fetch = FetchType.EAGER) private
	 * List<Comentario> comentario;
	 */

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
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;

	// relacion ManyToOne, esta entidad se quedara con la columna FK

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	@PrePersist
	protected void onCreate() {
		this.setUpdatedAt(new Date());
	}

	@PreUpdate
	protected void onUpdate() {
		this.setUpdatedAt(new Date());
	}

}
