package net.farmacia.service;
import java.util.List;

import net.farmacia.dao.MySqlUsuarioDAO;
import net.farmacia.entidad.Enlace;
import net.farmacia.entidad.Usuario;

public class UsuarioService {
	//
	private MySqlUsuarioDAO daoUsuario;
	
	public UsuarioService() {
		daoUsuario=new MySqlUsuarioDAO();
	}
	
	public Usuario sesion(Usuario bean) {
		return daoUsuario.iniciarSesion(bean);
	}
	public List<Enlace> traerEnlaces(int codUsu) {
		return daoUsuario.traerEnlacesPorUsuario(codUsu);
	}
}
