package cl.gargolas.web.controllers;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Descripcion;
import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Patron;
import cl.gargolas.web.models.PerfilMascota;
import cl.gargolas.web.models.RangoEtario;
import cl.gargolas.web.models.Raza;
import cl.gargolas.web.models.Sexo;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.ColorServiceImpl;
import cl.gargolas.web.services.DescripcionServiceImpl;
import cl.gargolas.web.services.EspecieServiceImpl;
import cl.gargolas.web.services.ImagenServiceImpl;
import cl.gargolas.web.services.PatronServiceImpl;
import cl.gargolas.web.services.PerfilMascotaServiceImpl;
import cl.gargolas.web.services.RangoEtarioServiceImpl;
import cl.gargolas.web.services.RazaServiceImpl;
import cl.gargolas.web.services.SexoServiceImpl;
import cl.gargolas.web.services.TamanioServiceImpl;

@Controller
@RequestMapping("/registro")
public class RegistroMascotaController {
	
	@Autowired
	PerfilMascotaServiceImpl perfilMascotaServiceImpl;
	
	@Autowired
	SexoServiceImpl sexoServiceImpl;
	
	@Autowired
	RangoEtarioServiceImpl rangoEtarioServiceImpl;
	
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
	@Autowired
	ColorServiceImpl colorServiceImpl;
	
	@Autowired
	PatronServiceImpl patronServiceImpl;
	
	@Autowired
	TamanioServiceImpl tamanioServiceImpl;
	
	@Autowired
	DescripcionServiceImpl descripcionServiceImpl;

	@Autowired
	ImagenServiceImpl imagenServiceImpl;
	
	@Autowired
	EspecieServiceImpl especieServiceImpl;
	
	
	
	@GetMapping("/mascotas")
	public String ComboBoxDatos(Model model) {
		List<Especie> listaEspecies = especieServiceImpl.obtenerListaEspecies();
		List<Sexo> listaSexos = sexoServiceImpl.obtenerListaSexo();
		List<RangoEtario> listaRangosEtarios = rangoEtarioServiceImpl.obtenerListaRangoEtario();
		List<Raza> listaRazas = razaServiceImpl.obtenerListaRazas();
		List<Color> listaColores = colorServiceImpl.obtenerListaColores();
		List<Patron> listaPatrones = patronServiceImpl.obtenerListaPatrones();
		List<Tamanio> listaTamanios = tamanioServiceImpl.obtenerListaTamanios();
		
		
		model.addAttribute("listaEspecies", listaEspecies);
		model.addAttribute("listaSexos", listaSexos);
		model.addAttribute("listaRangosEtarios", listaRangosEtarios);
		model.addAttribute("listaRazas", listaRazas);
		model.addAttribute("listaColores", listaColores);
		model.addAttribute("listaPatrones", listaPatrones );
		model.addAttribute("listaTamanios",listaTamanios);
		return "registroMascota.jsp" ;
		
	}
	
	
	
	@PostMapping("/guardarmascota")
	public String guardarRegistro(@RequestParam("nombre") String nombre
		,@RequestParam("sexo") Long sexo //a, long por que es el id que estamos obteniendo atraves de los values
		,@RequestParam("nChip") String nChip
		,@RequestParam("rangoEtario") Long rangoEtario
		,@RequestParam("raza") Long raza
		,@RequestParam("color") Long color
		,@RequestParam("patron") Long patron
		,@RequestParam("tamanio") Long tamanio
		,@RequestParam("descripcion") String descripcion
		,@RequestParam("imagen") String imagen
		, Model model) {
		
		if(  rangoEtario == 0 || 
				raza == 0 || color == 0 || patron  == 0 ||
				tamanio == 0  || sexo == 0) {
			model.addAttribute("Error","Datos vacio");
			
			return "registroMascota.jsp";
		}
		
		Descripcion descripcion2 = new Descripcion(); //creamos objeto para  pasar string
		descripcion2.setDescripcion(descripcion); //pasamos string al objeto descripcion2
		
		
		Sexo sexoId = sexoServiceImpl.obtenerSexo(sexo); //a
		RangoEtario rangoEtarioId = rangoEtarioServiceImpl.obtenerRangoEtario(rangoEtario);
		Raza razaId = razaServiceImpl.obtenerRaza(raza);
		Color colorId = colorServiceImpl.obtenerColor(color);
		Patron patronId = patronServiceImpl.obtenerPatron(patron);
		Tamanio tamanioId = tamanioServiceImpl.obtenerTamanio(tamanio);
		descripcionServiceImpl.guardarDescripcion(descripcion2); // usamos service implement de descripcion para guardar en base de datos la descrippcion y id de descriccion 
		
		
		
		PerfilMascota perfilMascota = new PerfilMascota();
		perfilMascota.setNombre(nombre);
		perfilMascota.setNChip(nChip);
		perfilMascota.setRangoEtario(rangoEtarioId);
		perfilMascota.setRaza(razaId);
		perfilMascota.setColor(colorId);
		perfilMascota.setPatron(patronId);
		perfilMascota.setTamanio(tamanioId);
		perfilMascota.setDescripcion(descripcion2);//guardamos en base de datos el id del objeto descripcion del perfil mascota
		perfilMascota.setImagen(imagen);
		perfilMascota.setSexo(sexoId);
		
		
		
	
		
		perfilMascotaServiceImpl.guardarPerfilMascota(perfilMascota);
		return "registroMascota.jsp";
	}
	
	

}
