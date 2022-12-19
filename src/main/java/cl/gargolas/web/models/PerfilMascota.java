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
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
 
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
 
@Entity
@Table(name="mascotas")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class PerfilMascota {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPerfilMascota;
 
	//@NotNull
	@Size(min=1,max=15, message= "Error en el ingreso del nombre")
	private String nombre;
 
	private String nChip;
 
	private String imagen; //importo java.sql
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "raza_id")
	private Raza raza;
 
	//@JsonIgnore
	//@ManyToOne(fetch = FetchType.LAZY)
	//@JoinColumn(name = "especie_id")
	//private Especie especie;
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "patron_id")
	private Patron patron;
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "color_id")
	private Color color;
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tamanio_id")
	private Tamanio tamanio;
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "descripcion_id")
	private Descripcion descripcion;
 
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rangoEtario_id")
	private RangoEtario rangoEtario;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "sexo_id")
	private Sexo sexo;
 
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date createdAt;
 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
 
	@PrePersist
	protected void onCreate(){
		this.setUpdatedAt(new Date());
	}
  
	@PreUpdate
	protected void onUpdate(){
		this.setUpdatedAt(new Date());
	}

	
 
}
 