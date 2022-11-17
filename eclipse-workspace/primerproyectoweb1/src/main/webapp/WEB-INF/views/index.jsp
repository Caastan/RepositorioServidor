<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
    <body>
       <h1>Personas</h1>  
        <%
       ArrayList alnombre = new ArrayList();
       alnombre.add("Peter");
       alnombre.add("Antonio");
       alnombre.add("Hermenegildo");
       alnombre.add("Gignacio");
       ArrayList alapellido = new ArrayList();
       alapellido.add("Languila");
       alapellido.add("Fernandez");
       alapellido.add("Romero");
       alapellido.add("Jirmenez");
       
       %>
       
       <table border = 1>
       <tr>
	   		<td>Nombre</td>
	   		<td>Apellido</td>       
       </tr>
  		<%
  		for(int i = 0; i<alnombre.size();i++){
  			out.println("<tr><td>"+alnombre.get(i)+"</td>");
  			out.println("<td>"+alapellido.get(i)+"</td></tr>");
  			
  		}
  		%>
       
       
       
       </table>
       
    </body>
</html>