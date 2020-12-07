package net.farmacia.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.UnidadOrganica;
import net.farmacia.service.UnidadOrganicaService;
@ParentPackage("dawi")
public class UnidadOrganicaAction extends ActionSupport{
	
	//atributos
	private List<UnidadOrganica> listaUnidadOrganicas;
	
	//objeto del servicio laboratorio
	private UnidadOrganicaService servicioUniO;
	
	//constructor
	public UnidadOrganicaAction() {
		servicioUniO=new UnidadOrganicaService();
	}
	
	//acción que retorna un JSON
	@Action(value = "/listaUnidadOrganica",results = {@Result(name="ok",type="json")})
	public String listaUnidadOrganica() {
		
		listaUnidadOrganicas=servicioUniO.listaUnidadOrganicas();
		
		return "ok";
	}

	public List<UnidadOrganica> getListaUnidadOrganicas() {
		return listaUnidadOrganicas;
	}

	public void setListaUnidadOrganicas(List<UnidadOrganica> listaUnidadOrganicas) {
		this.listaUnidadOrganicas = listaUnidadOrganicas;
	}

	public UnidadOrganicaService getServicioUniO() {
		return servicioUniO;
	}

	public void setServicioUniO(UnidadOrganicaService servicioUniO) {
		this.servicioUniO = servicioUniO;
	}
	
}
