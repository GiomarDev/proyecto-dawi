package net.farmacia.action;
import java.util.List;
import java.util.Map;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.farmacia.entidad.Enlace;
import net.farmacia.entidad.Usuario;
import net.farmacia.service.UsuarioService;
@ParentPackage("dawi")
public class UsuarioAction extends ActionSupport{
	//atributos
	private String login,clave;
	
	//servicio
	private UsuarioService servicioUsuario;
	
	//Map tipo session
	private Map<String, Object> session=ActionContext.getContext().getSession();
			
	
	public UsuarioAction() {
		servicioUsuario=new UsuarioService();
	}
	
	@Action(value = "/iniciarSesion",results = {
								@Result(name="ok",type="redirect",location = "/menuindex.jsp"),
								@Result(name="error",type="redirect",location = "/login.jsp")
								})
	public String iniciarSesion(){
		//crear un objeto de a clase Usuario
		Usuario bean=new Usuario();
		//setear los atributos "login y clave"
		bean.setLogin(login);
		bean.setClave(clave);
		//invocar al mètodo sesion y enviar el objeto "bean"
		Usuario usu=servicioUsuario.sesion(bean);
		//validar el objeto "usu"
		if(usu==null){
			session.put("MENSAJE", "Usuario y/o clave incorrectos...");
			return "error";
		}
		else{
			//traer los enlaces del usuario actual
			List<Enlace> lista=servicioUsuario.traerEnlaces(usu.getCodigoUsuario());
			//crear claves
			session.put("ENLACES", lista);
			session.put("USUARIO", usu);
		}
		return "ok";
	}
	@Action(value = "/cerrarSesion",results = {
			@Result(name="ok",type="redirect",location = "/login.jsp")})
	public String cerrarSesion(){
		//obtener la sesiòn actual
		SessionMap sessionActual=(SessionMap) ActionContext.getContext().getSession();
		sessionActual.invalidate();		
		return "ok";
	}
	
	
	
	
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}
	
	
}




