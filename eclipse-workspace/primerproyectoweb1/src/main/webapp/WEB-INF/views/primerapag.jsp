<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.primerproyecto.calculadora.Calculadora" %>
<%@page import="com.primerproyecto.calculadora.CalculadoraBigDecimal" %>
<!DOCTYPE html>
<html lang="en">
   <body>
       <%
       Double num1 = 20.00;
       Double num2 = 15.00;
       
       Calculadora c = new Calculadora();
       
       %>
       
       <p>El valor del numero 1 es: <%= num1 %></p>
       <p>El valor del numero 2 es: <%= num2 %></p>
       <p>La suma es: <%= c.suma(num1,num2) %></p>
       <p>La resta es: <%= c.resta(num1,num2) %></p>
       <p>La multiplicacion es: <%= c.multiplica(num1,num2) %></p>
       <p>La division es: <%= c.divide(num1,num2) %></p>
       
       
       
    </body>
</html>