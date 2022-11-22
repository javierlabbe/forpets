package cl.gargolas.web.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "sexos")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Sexo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idSexo;
	
	@NotNull
	@Size(min=1,max=15, message= "Error en el ingreso del nombre")
	private String descripcion;
	
	@OneToMany(mappedBy = "sexo", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private PerfilMascota perfilMascota;
}
