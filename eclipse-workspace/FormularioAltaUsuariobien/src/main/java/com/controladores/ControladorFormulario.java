package com.controladores;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.clases.Metodos;
import com.clases.Personas;



@Controller
public class ControladorFormulario {
	@GetMapping("/formulario")
	public ModelAndView formularioIntranet() {
		
		return new ModelAndView ("formulario");
	}
	
	@GetMapping("/resultado")
	public ModelAndView resultadoIntranet(HttpServletRequest request) {
		
		Personas p = new Personas(request.getParameter("nombre"),request.getParameter("apellido1"),request.getParameter("apellido2"),
				request.getParameter("dni"),request.getParameter("nacimiento"),request.getParameter("telefono"),request.getParameter("provincia"),request.getParameter("pais"),
				request.getParameter("direccion"),request.getParameter("sexo"),request.getParameter("codigopostal"));
		
		Metodos m = new Metodos(p);
		
		String error1 = m.validarDNI();
		String error2 = m.validarFecha();
		String error3 = m.validarTelefono();
		String error4 = m.validarCodigoP();
		
		
		
		return new ModelAndView ("resultado");
	}
	
	
	

}
