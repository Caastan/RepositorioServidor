package com.controladores;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

<%@page import="com.primerproyecto.calculadora.CalculadoraBigDecimal" %>
@Controller
public class Controlador {
	@GetMapping("/ejemplo1")
	public ModelAndView ejemplo1Intranet() {
		
		return new ModelAndView ("ejemplo1");
	}
	
	@GetMapping("/ejemplo2")
	public ModelAndView ejemplo2Intranet(HttpServletRequest request) {
		String numDec1 = request.getParameter("valor1Big");
	    String numDec2 = request.getParameter("valor2Big");
	    String operacionDec = request.getParameter("operacionBig");
	    String opera = operacionDec;
	    CalculadoraBigDecimal calculo = new CalculadoraBigDecimal();
	    
	    switch(operacionDec){
	    case "sumaBig": 
	    	
	    	operacionDec = String.valueOf(calculo.sumaBig(numDec1, numDec2));
	    	break;
	    case "restaBig": 
	    	
	    	operacionDec = String.valueOf(calculo.restaBig(numDec1, numDec2));
	    	break;
	    case "multiplicaBig": 
	    	operacionDec = String.valueOf(calculo.multiplicaBig(numDec1, numDec2));
	    	break;
	    case "divideBig":
	    	operacionDec = String.valueOf(calculo.divideBig(numDec1, numDec2));
	    	break;
	    }
	    
		
		return new ModelAndView ("ejemplo2");
	}

}
