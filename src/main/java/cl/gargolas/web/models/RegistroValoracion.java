package cl.gargolas.web.models;



import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


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
public class RegistroValoracion {
	
	@JsonIgnore
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="valoracion_id")
	private Valoracion valoracion;

	@JsonIgnore
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="lugarInteres_id")
	private LugarInteres lugarInteres;
	
	@JsonIgnore
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="usuario_id")
	private Usuario usuario;
}
