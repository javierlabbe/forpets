package cl.gargolas.web.models;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

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
	private Long idRaza;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idEspecie;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idPatron;
	
	private Blob imagen; //importo java.sql
	
	@NotNull
	@Size(min=1,max=15)
	private Long idColor;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idTamano;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idDescripcion;
	
	@NotNull
	@Size(min=1,max=15)
	private Long idUsuario;
	
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

	public Long getIdRaza() {
		return idRaza;
	}

	public void setIdRaza(Long idRaza) {
		this.idRaza = idRaza;
	}

	public Long getIdEspecie() {
		return idEspecie;
	}

	public void setIdEspecie(Long idEspecie) {
		this.idEspecie = idEspecie;
	}

	public Long getIdPatron() {
		return idPatron;
	}

	public void setIdPatron(Long idPatron) {
		this.idPatron = idPatron;
	}

	public Blob getImagen() {
		return imagen;
	}

	public void setImagen(Blob imagen) {
		this.imagen = imagen;
	}

	public Long getIdColor() {
		return idColor;
	}

	public void setIdColor(Long idColor) {
		this.idColor = idColor;
	}

	public Long getIdTamano() {
		return idTamano;
	}

	public void setIdTamano(Long idTamano) {
		this.idTamano = idTamano;
	}

	public Long getIdDescripcion() {
		return idDescripcion;
	}

	public void setIdDescripcion(Long idDescripcion) {
		this.idDescripcion = idDescripcion;
	}

	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) { 
		this.createdAt = createdAt;
	}
	
	@PrePersist
	protected void onCreate(){
		this.setUpdatedAt(new Date());
	}
	
	@PreUpdate
	protected void onUpdate(){
		this.setUpdatedAt(new Date());
	}
	
}
