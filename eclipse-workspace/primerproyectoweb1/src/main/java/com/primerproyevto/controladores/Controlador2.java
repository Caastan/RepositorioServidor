package com.primerproyevto.controladores;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Controlador2 {
	@GetMapping("/ListadoPersonas")
	public ModelAndView PersonasIntranet() {
		
		return new ModelAndView ("ListadoPersonas");
	}
	
	@GetMapping("/ListadoProvincias")
	public ModelAndView ProvinciasIntranet(HttpServletRequest request) {
		
		return new ModelAndView ("ListadoProvinicias");
	}

}
