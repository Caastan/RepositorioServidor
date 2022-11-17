<%@page import="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.primerproyecto.calculadora.CalculadoraBigDecimal" %>
<!DOCTYPE html>
<html lang="en">
    <body>
    <%
    int num1 = Integer.parseInt(request.getParameter("valor1"));
    int num2 = Integer.parseInt(request.getParameter("valor2"));
    String operacion = request.getParameter("operacion");
    
    switch(operacion){
    case "suma": 
    	int sum = num1 + num2;
    	operacion = String.valueOf(sum);
    	break;
    case "resta": 
    	int res = num1 - num2;
    	operacion = String.valueOf(res);
    	break;
    case "multiplica": 
    	int mul = num1 * num2;
    	operacion = String.valueOf(mul);
    	break;
    case "divide":
    	int div = num1 / num2;
    	operacion = String.valueOf(div);
    	break;
    }
    
    %>
    
    <p>La operacion de <%=num1 %> y <%=num2 %> es igual a: <%=operacion %></p>
    
    <br>
    <br>
    <%
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
    
    %>
    
    <p>La operacion <%= opera %> decimal de <%=numDec1 %> y <%=numDec2 %> es igual a: <%=operacionDec %></p>
    
    </body>
</html>