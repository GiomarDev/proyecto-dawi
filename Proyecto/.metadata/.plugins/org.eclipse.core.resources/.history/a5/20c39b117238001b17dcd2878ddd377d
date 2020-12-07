package net.farmacia.service;
import java.util.List;
import net.farmacia.dao.MySqlLaboratorioDAO;
import net.farmacia.entidad.Laboratorio;
public class LaboratorioService {
	//
	private MySqlLaboratorioDAO daoLab;
	
	public LaboratorioService() {
		daoLab=new MySqlLaboratorioDAO();
	}
	public List<Laboratorio> listaLaboratorios(){
		return daoLab.listLaboratorio();
	}
	
	
}



