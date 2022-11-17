package com.primerproyevto.controladores;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.primerproyecto.calculadora.CalculadoraBigDecimal;

@Controller
public class PrimerProyectoControlador {
	//Importante utilizar el getmapping para poder relacionar el controlador con los jsp.
	@GetMapping("/index")
	public ModelAndView indexIntranet() {
		
		return new ModelAndView ("index");
	}
	
	@GetMapping("/primerapag")
	public ModelAndView primeraIntranet() {
		
		return new ModelAndView ("primerapag");
	}
	
	//Poner siempre el objeto ModelAndViesw y delvolver este mismo
	@GetMapping("/segundapag")
	public ModelAndView segundaIntranet() {
		
		return new ModelAndView ("segundapag");
	}
	
	//Importar el objeto request para poder tratar los datos.
	@GetMapping("/resultado")
	public ModelAndView resultadoIntranet(HttpServletRequest request) {
		
		//No es necesario realizar este tratamiento de datos
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
		
		
		
		return new ModelAndView("resultado");
	}
	
}
