package cl.gargolas.web.models;

import java.util.Date;
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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="especies")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Especie {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idEspecie;
	
	@NotNull
	@Size(min=3,max=15)
	private String descripcion;
	
	@OneToMany(mappedBy = "especie", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private PerfilMascota perfilMascota;
	
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
