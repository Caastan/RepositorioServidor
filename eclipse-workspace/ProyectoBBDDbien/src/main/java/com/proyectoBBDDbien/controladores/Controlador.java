package com.proyectoBBDDbien.controladores;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.proyectoBBDDbien.bbdd.Usuariosrepositorios;
import com.proyectoBBDDbien.entidades.Usuarios;
@Controller
public class Controlador {
	@Autowired
	protected Usuariosrepositorios u;
	
	
	
	@GetMapping("/verUsuario")
	public ModelAndView PersonasIntranet() {
		List <Usuarios> lista = u.obtenerUsuario();
		
		return new ModelAndView ("verUsuario");
	}
	

}

