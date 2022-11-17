<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <body>
    <form name="" action= "resultado" method= "get">
	    <p>Valor1</p>
	    <input type= "text" name="valor1">
	    
	    <p>Valor2</p>
	    <input type= "text" name="valor2" >
	    
	    <br>
	    <br>
	    
	    <select name="operacion">
	    <option value ="suma">Suma</option>
	    <option value ="resta">Resta</option>
	    <option value ="multiplica">Multiplicacion</option>
	    <option value ="divide">Division</option>
	    
	    </select>
	    
	    <p>Valor1Dec</p>
	    <input type= "text" name="valor1Big">
	    
	    <p>Valor2Dec</p>
	    <input type= "text" name="valor2Big" >
	    
	    <br>
	    <br>
	  
	    
	    <select name="operacionBig">
	    <option value ="sumaBig">SumaDecimal</option>
	    <option value ="restaBig">RestaDecimal</option>
	    <option value ="multiplicaBig">MultiplicacionDecimal</option>
	    <option value ="divideBig">DivisionDecimal</option>
	    
	    </select>
	    
	    <br>
	    <br>
	    
	    <input type="submit" value="Enviar">
	    
	    </form>
       
    </body>
</html>