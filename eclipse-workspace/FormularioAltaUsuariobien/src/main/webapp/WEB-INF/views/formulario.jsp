<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
	<form name="" action= "resultado" method= "get">
		<p>Nombre</p>
		<input type="text" name="nombre">

		<p>Primer Apellido</p>
		<input type="text" name="apellido1">

		<p>Segundo Apellido</p>
		<input type="text" name="apellido2">

		<p>Dni</p>
		<input type="text" name="dni">

		<p>Fecha de Nacimiento</p>
		<input type="text" name="nacimiento"><br>
		<br>
		
		<p>Telefono</p>
		<input type="text" name="telefono"><br>
		<br>
		
		<p>Provincia</p>
		<select name="provincia">
			<option value="almeria">Almería</option>
			<option value="cadiz">Cádiz</option>
			<option value="cordoba">Córdoba</option>
			<option value="granada">Granada</option>
			<option value="huelva">Huelva</option>
			<option value="jaen">Jaén</option>
			<option value="malaga">Málaga</option>
			<option value="sevilla">Sevilla</option>
			<option value="huesca">Huesca</option>
			<option value="teruel">Teruel</option>
			<option value="zaragoza">Zaragoza</option>
			<option value="asturias">Asturias</option>
			<option value="baleares">Balears, Illes</option>
			<option value="palmas">Palmas, Las</option>
			<option value="tenerife">Santa Cruz de Tenerife</option>
			<option value="cantabria">Cantabria</option>
			<option value="avila">Ávila</option>
			<option value="burgos">Burgos</option>
			<option value="leon">León</option>
			<option value="palencia">Palencia</option>
			<option value="salamanca">Salamanca</option>
			<option value="segovia">Segovia</option>
			<option value="soria">Soria</option>
			<option value="valladolid">Valladolid</option>
			<option value="zamora">Zamora</option>
			<option value="albacete">Albacete</option>
			<option value="ciudadreal">Ciudad Real</option>
			<option value="cuenca">Cuenca</option>
			<option value="guadalajara">Guadalajara</option>
			<option value="toledo">Toledo</option>
			<option value="barcelona">Barcelona</option>
			<option value="girona">Girona</option>
			<option value="lleida">Lleida</option>
			<option value="tarragona">Tarragona</option>
			<option value="alicante">Alicante</option>
			<option value="castellon">Castellón</option>
			<option value="valencia">Valencia</option>
			<option value="badajoz">Badajoz</option>
			<option value="caceres">Cáceres</option>
			<option value="lacoruna">Coruña, A</option>
			<option value="lugo">Lugo</option>
			<option value="ourense">Ourense</option>
			<option value="pontevedra">Pontevedra</option>
			<option value="madrid">Madrid</option>
			<option value="murcia">Murcia</option>
			<option value="navarra">Navarra</option>
			<option value="alava">Araba/Álava</option>
			<option value="biskaia">Bizkaia</option>
			<option value="gipuzkoa">Gipuzkoa</option>
			<option value="larioja">Rioja, La</option>
			<option value="ceuta">Ceuta</option>
			<option value="melilla">Melilla</option>
			<option value="rosellon">Rosellón</option>
		</select><br>
		<br>

		<p>Pais</p>
		<select name="pais">
			<option value="espanya">España</option>
			<option value="francia">Francia</option>
		</select><br>
		<br>

		<p>Dirección</p>
		<textarea rows="3" cols="50" name="direccion">Inserte su direccion aqui</textarea>

		<p>Sexo</p>
		<input type="radio" name="sexo" value="hombre">Masculino
		<input type="radio" name="sexo" value="mujer">Femenino
		<input type="radio" name="sexo" value="nocontesta">Prefiero no responder <br> <br>

		<p>Codigo Postal</p>
		<input type="text" name="codigopostal"><br>
		<br>
		
		
		<input type="submit" value="Enviar">




	</form>

</body>
</html>