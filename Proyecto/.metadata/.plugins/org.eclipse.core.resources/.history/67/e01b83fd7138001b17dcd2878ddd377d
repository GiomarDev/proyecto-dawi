package net.farmacia.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Laboratorio;
import net.farmacia.service.LaboratorioService;
@ParentPackage("dawi")
public class LaboratorioAction extends ActionSupport{
	
	//atributos
	private List<Laboratorio> listaLaboratorios;
	
	//objeto del servicio laboratorio
	private LaboratorioService servicioLab;
	
	//constructor
	public LaboratorioAction() {
		servicioLab=new LaboratorioService();
	}
	
	//acción que retorna un JSON
	@Action(value = "/listaLaboratorio",results = {@Result(name="ok",type="json")})
	public String listaLaboratorio() {
		
		listaLaboratorios=servicioLab.listaLaboratorios();
		
		return "ok";
	}
	
	
	
	
	public List<Laboratorio> getListaLaboratorios() {
		return listaLaboratorios;
	}
	public void setListaLaboratorios(List<Laboratorio> listaLaboratorios) {
		this.listaLaboratorios = listaLaboratorios;
	}
}
