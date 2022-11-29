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
@Table(name="direcciones")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Direccion {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idDireccion;
	
	@NotNull
	@Size(min=1,max=30)
	private String nombreCalle;
	
	@NotNull
	@Size(min=1,max=10)
	private String numeroDireccion;
	
	@NotNull
	private Integer idComuna;
	
	@NotNull
	private Integer idCiudad;
	
	@NotNull
	private Integer idRegion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="comuna_id")
	private Comuna comuna;

	@JsonIgnore
	@OneToMany(mappedBy = "direccion", fetch = FetchType.EAGER)
	private List<Usuario> usuario;

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
