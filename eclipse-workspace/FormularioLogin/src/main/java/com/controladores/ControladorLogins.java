package com.controladores;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorLogins {
	@GetMapping("/primero")
	public ModelAndView LoginIntranet() {
		
		return new ModelAndView ("primero");
	}
	
	@GetMapping("/segunda")
	public ModelAndView SegundaIntranet(HttpServletRequest request) {
	HttpSession sesion = request.getSession(true);
	ModelAndView pepe;
	String usuario = request.getParameter("usuario");
	String contrasena = request.getParameter("contrasena");
	
	
	return new ModelAndView ("segunda");
	
	}
}
