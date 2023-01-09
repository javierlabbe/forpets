package cl.gargolas.web.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.gargolas.web.models.CategoriaReporteLugar;
import cl.gargolas.web.models.Color;
import cl.gargolas.web.models.Descripcion;
import cl.gargolas.web.models.Especie;
import cl.gargolas.web.models.Etiqueta;
import cl.gargolas.web.models.Imagen;
import cl.gargolas.web.models.Raza;
import cl.gargolas.web.models.Reporte;
import cl.gargolas.web.models.Tamanio;
import cl.gargolas.web.services.CategoriaReporteLugarServiceImpl;
import cl.gargolas.web.services.ColorServiceImpl;
import cl.gargolas.web.services.DescripcionServiceImpl;
import cl.gargolas.web.services.EspecieServiceImpl;
import cl.gargolas.web.services.EtiquetaServiceImpl;
import cl.gargolas.web.services.ImagenServiceImpl;
import cl.gargolas.web.services.LugarInteresServiceImpl;
import cl.gargolas.web.services.RazaServiceImpl;
import cl.gargolas.web.services.ReporteServiceImpl;
import cl.gargolas.web.services.TamanioServiceImpl;

@Controller
@RequestMapping("mapaPrincipal")
public class MapaPrincipalController {

	@Autowired
	ReporteServiceImpl reporteServiceImpl;
	
	@Autowired
	EspecieServiceImpl especieServiceImpl;
	
	@Autowired
	RazaServiceImpl razaServiceImpl;
	
	@Autowired
	ColorServiceImpl colorServiceImpl;
	
	@Autowired
	TamanioServiceImpl tamanioServiceImpl;
	
	@Autowired
	DescripcionServiceImpl descripcionServiceImpl;
	
	@Autowired
	ImagenServiceImpl imagenServiceImpl;
	
	@Autowired
	LugarInteresServiceImpl lugarInteresServiceImpl;
	
	@Autowired
	EtiquetaServiceImpl etiquetaServiceImpl;
	
	@Autowired
	CategoriaReporteLugarServiceImpl categoriaReporteLugarServiceImpl;


	@GetMapping("")
	public String mostrarReporte(Model model) {
		List<Especie> listaEspecies = especieServiceImpl.obtenerListaEspecies();
		List<Raza> listaRazas = razaServiceImpl.obtenerListaRazas();
		List<Color> listaColores = colorServiceImpl.obtenerListaColores();
		List<Tamanio> listaTamanios = tamanioServiceImpl.obtenerListaTamanios();
		List<Imagen> listaImagen = imagenServiceImpl.obtenerListaImagenes();
		
		List<Etiqueta> listaEtiqueta = etiquetaServiceImpl.obtenerListaEtiqueta();
		List<Reporte> listaReporte = reporteServiceImpl.obtenerListaReportes();
		
		model.addAttribute("listaEspecies", listaEspecies);
		model.addAttribute("listaRazas", listaRazas);
		model.addAttribute("listaColores", listaColores);
		model.addAttribute("listaTamanios", listaTamanios);
		model.addAttribute("listaImagen", listaImagen);
		
		model.addAttribute("listaEtiqueta", listaEtiqueta);
		model.addAttribute("listaReportes", listaReporte);
		return "MapaPrincipal.jsp";
	}
	
	/*
	 * @PostMapping("") public String
	 * guardarReporte(@RequestParam("tituloReporte")String tituloReporte
	 * ,@RequestParam("tipoReporte") String tipoReporte ,@RequestParam("nombre")
	 * String nombre ,@RequestParam("nChip") String nChip ,@RequestParam("especie")
	 * Long especie ,@RequestParam("raza") Long raza ,@RequestParam("color") Long
	 * color ,@RequestParam("tamanio") Long tamanio ,@RequestParam("descripcion")
	 * String descripcion
	 * 
	 * ,@RequestParam("foto") byte [] foto
	 * 
	 * ,@RequestParam("nombre1") String nombre1 ,@RequestParam("categoria") Long
	 * etiqueta ,@RequestParam("direccion") String direccion
	 * ,@RequestParam("horario") String horario , Model model, HttpSession session)
	 * {
	 * 
	 * mostrarReporte(model);
	 * 
	 * if (especie ==0 || raza ==0 || color ==0 || tamanio ==0 || etiqueta ==0) {
	 * model.addAttribute("Ingrese los datos solicitados"); return
	 * "MapaPrincipal.jsp"; }
	 * 
	 * Descripcion descripcion2 = new Descripcion();
	 * descripcion2.setDescripcion(descripcion);
	 * 
	 * 
	 * Especie especieId = especieServiceImpl.obtenerEspecie(especie); Raza razaId =
	 * razaServiceImpl.obtenerRaza(raza); Color colorId =
	 * colorServiceImpl.obtenerColor(color); Tamanio tamanioId =
	 * tamanioServiceImpl.obtenerTamanio(tamanio);
	 * descripcionServiceImpl.guardarDescripcion(descripcion2);
	 * 
	 * Etiqueta etiquetaId = etiquetaServiceImpl.obtenerEtiqueta(etiqueta);
	 * 
	 * 
	 * Reporte reporte = new Reporte(); reporte.setTituloReporte(tituloReporte);
	 * reporte.setTipoReporte(tipoReporte); reporte.setNombre(nombre);
	 * reporte.setEspecie(especieId); reporte.setRaza(razaId);
	 * reporte.setColor(colorId); reporte.setTamanio(tamanioId);
	 * reporte.setDescripcion(descripcion); reporte.setFoto(foto);
	 * 
	 * 
	 * CategoriaReporteLugar categoriaReporteLugar = new CategoriaReporteLugar();
	 * categoriaReporteLugar.setFoto(foto);
	 * categoriaReporteLugar.setEtiqueta(etiquetaId);
	 * 
	 * 
	 * 
	 * reporteServiceImpl.guardarReporte(reporte);
	 * 
	 * categoriaReporteLugarServiceImpl.guardarCategoriaReporteLugar(
	 * categoriaReporteLugar);
	 * 
	 * 
	 * return "MapaPrincipal.jsp"; }
	 */
}