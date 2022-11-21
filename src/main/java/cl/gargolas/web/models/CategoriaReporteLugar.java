package cl.gargolas.web.models;
//importaciones

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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//Crecion de la clase o entidad
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
	private Integer idCategoria;
	
	@NotNull
	@Size(min=0, max=201)
	private String Descripcion;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	//relacion OneToMany con reporte
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Reporte> Reportes;
	
	//relacion OneToMany con lugarInteres
	@JsonIgnore
	@OneToMany(mappedBy = "categoriaReporteLugar",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<LugarInteres> lugaresInteres;
	

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
