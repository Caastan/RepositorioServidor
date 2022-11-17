<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<%
	String dni = request.getParameter("error1");
	String fecha = request.getParameter("error2");
	String telefono = request.getParameter("error3");
	String codigoP = request.getParameter("error4");
	
	
	%>
	<p>El dni introducido es: <%= dni %></p><br><br>
	
	<p>La fecha introducida es: <%= fecha %></p><br><br>
	
	<p>El telefono introducido es: <%= telefono %></p><br><br>
	
	<p>El Codigo Postal introducido es: <%= codigoP %></p>
</body>
</html>