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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="categoriasReportesLugares")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CategoriaReporteLugar {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idCategoria;
	
	private String direccion;
	
	private String horario;
	
	@Size(min=1,max=30)
	private String nombre1;
	
	@Column(name="foto", length= Integer.MAX_VALUE,nullable= true)
	private byte[] foto;
	
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Reporte> Reportes;
	
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<LugarInteres> lugaresInteres;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="etiqueta_id")
	private Etiqueta etiqueta;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
	
}
