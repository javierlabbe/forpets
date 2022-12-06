package cl.gargolas.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cl.gargolas.web.services.RazaServiceImpl;

@Controller
public class RazaController {
	@Autowired
	RazaServiceImpl razaServiceImpl;
}
