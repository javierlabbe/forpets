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
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "rangosEtareos")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class RangoEtario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idRangoEtario;
	
	private String descripcion;
	
	@OneToMany(mappedBy = "rangoEtareo", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
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
