package cl.gargolas.web.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="valoraciones")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Valoracion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idValoracion;  
	
	@NotNull
	private Integer puntuacion;

	@JsonIgnore
	@OneToMany(mappedBy = "valoracion",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<RegistroValoracion> registroValoracion; 
}
