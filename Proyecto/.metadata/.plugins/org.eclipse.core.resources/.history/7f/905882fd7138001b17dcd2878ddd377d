package net.farmacia.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Laboratorio;
import net.farmacia.entidad.Tipo;
import net.farmacia.service.LaboratorioService;
import net.farmacia.service.MedicamentoService;
@ParentPackage("dawi")
public class TipoAction extends ActionSupport{
	
	//atributos
	private List<Tipo> listaTipos;
	private int idLaboratorio;
	
	//objeto del servicio tipo
	private MedicamentoService mServicio;
	
	//constructor
	public TipoAction() {
		mServicio=new MedicamentoService();
	}
	
	//acción que retorna un JSON
	@Action(value = "/listaTipo",results = {@Result(name="ok",type="json")})
	public String listaTipo() {
		
		listaTipos=mServicio.listAllTipoAtLaboratorio(idLaboratorio);
		
		return "ok";
	}

	public List<Tipo> getListaTipos() {
		return listaTipos;
	}

	public void setListaTipos(List<Tipo> listaTipos) {
		this.listaTipos = listaTipos;
	}

	public int getIdLaboratorio() {
		return idLaboratorio;
	}

	public void setIdLaboratorio(int idLaboratorio) {
		this.idLaboratorio = idLaboratorio;
	}

	public MedicamentoService getmServicio() {
		return mServicio;
	}

	public void setmServicio(MedicamentoService mServicio) {
		this.mServicio = mServicio;
	}
	
	
	
}
