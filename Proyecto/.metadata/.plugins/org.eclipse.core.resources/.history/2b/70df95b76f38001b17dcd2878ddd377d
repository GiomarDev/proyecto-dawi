package net.farmacia.action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.farmacia.entidad.InformeMultiple;
import net.farmacia.service.InformeMultipleService;
@ParentPackage("dawi")
public class InformeMultipleAction extends ActionSupport{
	//atributos
	private List<InformeMultiple> listaInformeMultiples;//tabla
	private InformeMultiple informeMultiple;//formulario controles
	private int codigo;// eliminar o buscar
	
	
	//objeto del servicio medicamento
	private InformeMultipleService servicioInfo;
	
	
	//crear un atributo de la clase Map de tipo session
	private Map<String,Object> session=ActionContext.getContext().getSession();
	
	
	//constructor
	public InformeMultipleAction() {
		servicioInfo=new InformeMultipleService();
	}
	
	@Action(value = "/listAllInformeMultiples",results = {@Result(name="ok",type="json")})
	public String listAllInformeMultiples() {
		listaInformeMultiples=servicioInfo.listarInformeMultiples();
		return "ok";
	}
	@Action(value = "/findInformeMultiple",results = {@Result(name="ok",type="json")})
	public String findMedicamento() {
		informeMultiple=servicioInfo.buscarInformeMultiple(codigo);
		return "ok";
	}
	
	@Action(value = "/saveInformeMultiple",results = {@Result(name="ok",type="redirect",location = "/informeMultiple.jsp")})
	public String saveInformeMultiple() {
		int resu;
		//validar el atributo idMedicamento
		if(informeMultiple.getIdInformeMultiple()==0){
			resu=servicioInfo.registrarInformeMultiple(informeMultiple);
			if(resu!=-1)
				session.put("MENSAJE", "Registro guardado correctamente");
			else
				session.put("MENSAJE", "Error en el registro");
		}
		else {
			resu=servicioInfo.actualizarInformeMultiple(informeMultiple);
			if(resu!=-1)
				session.put("MENSAJE", "Registro actualizado correctamente");
			else
				session.put("MENSAJE", "Error en la actualización");
		}
		
		return "ok";
	}
	

	@Action(value = "/deleteInformeMultiple",results = {@Result(name="ok",type="redirect",location = "/informeMultiple.jsp")})
	public String deleteInformeMultiple() {
		int resu;
		resu=servicioInfo.eliminarInformeMultiple(codigo);
		if(resu!=-1)
			session.put("MENSAJE", "Registro eliminado correctamente");
		else
			session.put("MENSAJE", "Error en la eliminación");
		
		
		return "ok";
	}

	public List<InformeMultiple> getListaInformeMultiples() {
		return listaInformeMultiples;
	}

	public void setListaInformeMultiples(List<InformeMultiple> listaInformeMultiples) {
		this.listaInformeMultiples = listaInformeMultiples;
	}

	public InformeMultiple getInformeMultiple() {
		return informeMultiple;
	}

	public void setInformeMultiple(InformeMultiple informeMultiple) {
		this.informeMultiple = informeMultiple;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}	
	
}




