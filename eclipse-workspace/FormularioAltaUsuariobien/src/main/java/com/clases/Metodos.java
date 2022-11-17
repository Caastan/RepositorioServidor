package com.clases;

public class Metodos {
	
	
	
	protected Personas per;
	
	public Metodos() {}
	
	public Metodos(Personas per) {
		this.per = per;
	}
	
	
	public String validarDNI() {
		String dni = per.getDni();
		dni = dni.toUpperCase();
		int numero = Integer.parseInt(dni.substring(0, dni.length()-1));
		String letra = dni.substring(dni.length()-1, dni.length());
		String letras = "TRWAGMYFPDXBNJZSQVHLCKET";
		
		numero = numero / 23;
		
		letras = letras.substring(numero, numero+1);
		
		if(letras != letra) {
			
			dni = "Incorrecto";
			
		}
		
		return dni = "Correcto";
		
	}
	
	public String validarFecha() {
		String fecha = per.getFechaNacimiento();
		
		String [] partes = fecha.split("/");
		
		int dia = Integer.parseInt(partes[0]);
		
		int mes = Integer.parseInt(partes[1]);
		
		int anyo = Integer.parseInt(partes[2]);
		
		if(dia<1 || dia > 31) {
			fecha =  "Incorrecta";
		}
		
		if(mes<1 || mes > 12) {
			fecha =  "Incorrecta";
		}
		
		if(mes==2 && dia==29 && anyo % 400 != 0 || (anyo % 4 == 0 && anyo % 100 == 0)) {
			fecha =  "Incorrecta";
		}
		
		return fecha = "Correcto";
		
		
	}
	
	public String validarTelefono() {
		String telefono = per.getTelefono();
		
		int tlf = Integer.parseInt(telefono);
		
		if(tlf < 7 || tlf > 9) {
			telefono = "Incorrecto";
			
		}
		
		return telefono = "Correcto";
		
	}
	
	public String validarCodigoP() {
		String codigop = per.getCodigoPostal();
		
		int cp = Integer.parseInt(codigop);
		
		if(cp < 1 || cp > 5) {
			codigop = "Incorrecto";
		}
		
		return codigop = "Correcto";
	}
	
	
	
	
}
