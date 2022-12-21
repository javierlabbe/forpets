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
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
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
	@Transient
	private String password2; 
	
	//@NotNull
	@Column(name="fotoPerfil", length= Integer.MAX_VALUE, nullable = true)
	private byte[] imagen;
	
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
	private List<Usuario_Reporte> usuario_reporte;

	@JsonIgnore
	@OneToMany(mappedBy = "usuario", fetch = FetchType.LAZY)
	private List<PerfilMascota> perfilMascota;
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;

	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
		}

	@PreUpdate
		protected void onUpdate(){
		this.updatedAt = new Date();
		}
	
}
