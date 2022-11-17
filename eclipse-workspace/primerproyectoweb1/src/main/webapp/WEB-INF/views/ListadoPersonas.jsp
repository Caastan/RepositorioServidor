<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>

<%@page import="com.primerproyecto.clases.Personas" %>
<html lang="en">
    <body>
    
    <%
    //Declaraco y relleno el ArrayList Personas.
    Personas p1 = new Personas("Juan","Castanio","Carrilero","Sevilla","Hombre");
    Personas p2 = new Personas("Jonatan","Carrera","Viera","Sevilla","Hombre");
    Personas p3 = new Personas("Sara","Artiles","Lopez","Canarias","Mujer");
    Personas p4 = new Personas("Rafael","Fernandez","Garcia","Machupichu","Hombre");
    Personas p5 = new Personas("Pedro","Calderon","Jimenez","Madrid","Hombre");
    Personas p6 = new Personas("Ana","Gutierrez","Carrilero","Granada","Mujer");
    Personas p7 = new Personas("Sigifreda","Perez","Perez","Cadiz","Mujer");
    Personas p8 = new Personas("Hermenegilda","Cabellero","Carbonell","Valencia","Mujer");
    Personas p9 = new Personas("Paula","Ortiz","Fernandez","Palencia","Mujer");
    Personas p10 = new Personas("Gilberta","Martos","Trujillos","Alicante","Mujer");
    Personas p11 = new Personas("Jose Antonio","Moreno","Fabian","Sevilla","Hombre");
    Personas p12 = new Personas("Eva","Cardenas","Carrilero","Huelvas","Mujer");
    Personas p13 = new Personas("Alejandro","Martagon","Reina","Vigo","Hombre");
    Personas p14 = new Personas("Gema","Perez","Garcia","Malaga","Mujer");
    Personas p15 = new Personas("Fernando","Perez","Nieto","Mallorca","Hombre");
    
    ArrayList <Personas> Listado = new ArrayList<Personas>();
    
    Listado.add(p1);
    Listado.add(p2);
    Listado.add(p3);
    Listado.add(p4);
    Listado.add(p5);
    Listado.add(p6);
    Listado.add(p7);
    Listado.add(p8);
    Listado.add(p9);
    Listado.add(p10);
    Listado.add(p11);
    Listado.add(p12);
    Listado.add(p13);
    Listado.add(p14);
    Listado.add(p15);
    
    //Creo las variables de contadores para mostrar al final personas, hombres y mujeres
    
    int cHombres = 0;
    int cMujeres = 0;
    %>
    <table border = 1>
    <tr>
	   		<td>Nombre</td>
	   		<td>Apellido1</td>
	   		<td>Apellido2</td>
	   		<td>Provincia</td>
	   		<td>Sexo</td>       
    </tr>
  	<% 
    for(int i = 0; i< Listado.size();i++){
    	out.println("<tr><td>"+Listado.get(i).getNombre()+"</td>");
    	out.println("<td>"+Listado.get(i).getApellido1()+"</td>");
    	out.println("<td>"+Listado.get(i).getApellido2()+"</td>");
    	out.println("<td>"+Listado.get(i).getProvincia()+"</td>");
    	out.println("<td>"+Listado.get(i).getSexo()+"</td></tr>");
    	
    	
    	if(Listado.get(i).getSexo() == "Hombre"){
    		cHombres++;
    		
    	}else{cMujeres++;}
    	
    }

 
    %>
    </table>
	<p>El numero de personas es: <%=Listado.size() %></p><br>
	<p>El numero de hombres es: <%=cHombres %></p><br>
	<p>El numero de mujeres es: <%= cMujeres %></p>
	
	
	
	<%
	
	HashMap <String, ArrayList<Personas>> map = new HashMap <String, ArrayList<Personas>>();
	
	for(int i = 0; i<Listado.size();i++){
		if(map.get(Listado.get(i).getProvincia())== null){
			map.put(Listado.get(i).getProvincia(), new ArrayList<Personas>());
			map.get(Listado.get(i).getProvincia()).add(Listado.get(i));
		}else{map.get(Listado.get(i).getProvincia()).add(Listado.get(i));}
	
	}
	
	for(String ciudad : map.keySet()){
		
		out.println("<h2>"+ ciudad+"</h2>");
		
		
		for(int i = 0; i< map.get(ciudad).size();i++){
			out.println("<table border = 1><tr><td>Nombre</td><td>Apellido1</td><td>Apellido2</td><td>Provincia</td><td>Sexo</td></tr>");
			out.println("<tr><td>"+map.get(ciudad).get(i).getNombre()+"</td>");
			out.println("<td>"+map.get(ciudad).get(i).getApellido1()+"</td>");
			out.println("<td>"+map.get(ciudad).get(i).getApellido2()+"</td>");
			out.println("<td>"+map.get(ciudad).get(i).getProvincia()+"</td>");
			out.println("<td>"+map.get(ciudad).get(i).getSexo()+"</td></tr></table>");
			
		}
			
		
	}
	
	
	
	
	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  
    </body>
</html>