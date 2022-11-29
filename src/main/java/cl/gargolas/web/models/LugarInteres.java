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
@Table(name="lugaresInteres")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class LugarInteres {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idLugar;
	
	@NotNull
	@Size(min=3, max=31)
	private String titulo;
		
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="CategoriaReporteLugar_id")
	private CategoriaReporteLugar categoriaReporteLugar;
	
	@JsonIgnore
	@OneToMany(mappedBy = "lugarInteres",fetch = FetchType.LAZY)
	private List<Lugar_Etiqueta> lugar_etiqueta;
	
	@JsonIgnore
	@OneToMany(mappedBy = "lugarInteres", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<RegistroValoracion> registroValoracion;
	
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
