package cl.gargolas.web.models;

import javax.validation.constraints.NotNull;

public class Lugar_Etiqueta {
	//instantiate attributes
	
	@NotNull
	private Integer  idEtiqueta;
	
	@NotNull
	private Integer idLugar;

	//empty constructor
	public Lugar_Etiqueta() {
		super();
	}
 
	//Getter y Setter
	public Integer getIdEtiqueta() {
		return idEtiqueta;
	}

	public void setIdEtiqueta(Integer idEtiqueta) {
		this.idEtiqueta = idEtiqueta;
	}

	public Integer getIdLugar() {
		return idLugar;
	}

	public void setIdLugar(Integer idLugar) {
		this.idLugar = idLugar;
	}
	
	

	
}
