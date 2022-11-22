package cl.gargolas.web.models;

import java.sql.Blob;
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

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="mascotas")
public class PerfilMascotas {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPerfilMascota;
	
	@NotNull
	@Size(min=1,max=15, message= "Error en el ingreso del nombre")
	private String nombre;
	
	private Integer nChip;
	
	@NotNull
	@Size(min=1,max=15) // revisar colores mas largos y cortos
	private String colorPelaje;
	
	@NotNull
	@Size(min=1,max=15) //revisar patrones
	private String patron;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idTamanio;
	
	private Blob imagen; //importo java.sql
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "raza_id")
	private Raza raza;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "especie_id")
	private Especie especie;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "patron_id")
	private Patron patronfk;

	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "color_id")
	private Color color;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tamanio_id")
	private Tamanio tamanio;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "descripcion_id")
	private Descripcion descripcion;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	
	
	@Column(updatable = false)
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;

	//Constructor
	public PerfilMascotas() {
		super();
	}
	//Getters and setters
	
	
	
	@PrePersist
	protected void onCreate(){
		this.setUpdatedAt(new Date());
	}
	
	public Long getIdPerfilMascota() {
		return idPerfilMascota;
	}



	public void setIdPerfilMascota(Long idPerfilMascota) {
		this.idPerfilMascota = idPerfilMascota;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public Integer getnChip() {
		return nChip;
	}



	public void setnChip(Integer nChip) {
		this.nChip = nChip;
	}



	public String getColorPelaje() {
		return colorPelaje;
	}



	public void setColorPelaje(String colorPelaje) {
		this.colorPelaje = colorPelaje;
	}



	public String getPatron() {
		return patron;
	}



	public void setPatron(String patron) {
		this.patron = patron;
	}



	public Long getIdTamanio() {
		return idTamanio;
	}



	public void setIdTamanio(Long idTamanio) {
		this.idTamanio = idTamanio;
	}



	public Blob getImagen() {
		return imagen;
	}



	public void setImagen(Blob imagen) {
		this.imagen = imagen;
	}



	public Raza getRaza() {
		return raza;
	}



	public void setRaza(Raza raza) {
		this.raza = raza;
	}



	public Especie getEspecie() {
		return especie;
	}



	public void setEspecie(Especie especie) {
		this.especie = especie;
	}



	public Patron getPatronfk() {
		return patronfk;
	}



	public void setPatronfk(Patron patronfk) {
		this.patronfk = patronfk;
	}



	public Color getColor() {
		return color;
	}



	public void setColor(Color color) {
		this.color = color;
	}



	public Tamanio getTamanio() {
		return tamanio;
	}



	public void setTamanio(Tamanio tamanio) {
		this.tamanio = tamanio;
	}



	public Descripcion getDescripcion() {
		return descripcion;
	}



	public void setDescripcion(Descripcion descripcion) {
		this.descripcion = descripcion;
	}



	public Usuario getUsuario() {
		return usuario;
	}



	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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



	@PreUpdate
	protected void onUpdate(){
		this.setUpdatedAt(new Date());
	}
	
}
