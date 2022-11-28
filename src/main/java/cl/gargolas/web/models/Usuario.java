package cl.gargolas.web.models;

import java.sql.Blob;
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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="usuarios")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idUsuario;  
	
	//@NotNull
	private String nombre;
	
	//@NotNull
	private String apellidoPaterno;
	
	//@NotNull
	private String apellidoMaterno;
	
	//@NotNull
	private Date fechaNacimiento;
	
	//@NotNull
	private String rut;

	//@NotNull
	private String telefono;
	
	//@NotNull
	private String email;
	
	//@NotNull
	private String password;
	
	//@NotNull
	//private String password2; // para confirmar contraseña
	
	//@NotNull
	private Blob imagen;	
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	
	@NotNull
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "direccion_id")
	private Direccion direccion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "descripcion_id")
	private Descripcion descripcion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ubicacion_id")
	private Ubicacion ubicacion;
	
	
	@JsonIgnore
	@OneToMany(mappedBy = "usuario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Usuario_Reporte> usuario_Reporte;


	
	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
		}

	@PreUpdate
		protected void onUpdate(){
		this.updatedAt = new Date();
		}
	

}
