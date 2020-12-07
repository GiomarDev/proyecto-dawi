package net.farmacia.service;
import java.util.List;

import net.farmacia.dao.MySqlInformeMultipleDAO;
import net.farmacia.entidad.InformeMultiple;

public class InformeMultipleService {
	//
	private MySqlInformeMultipleDAO daoInfo;
	
	public InformeMultipleService() {
		daoInfo=new MySqlInformeMultipleDAO();
	}
	
	public List<InformeMultiple> listarInformeMultiples(){
		return daoInfo.listInformeMultiple();
	}
	public InformeMultiple buscarInformeMultiple(int id) {
		return daoInfo.findInformeMultiple(id);
	}
	public int registrarInformeMultiple(InformeMultiple bean) {
		return daoInfo.addInformeMultiple(bean);
	}
	public int actualizarInformeMultiple(InformeMultiple bean) {
		return daoInfo.updateInformeMultiple(bean);
	}
	public int eliminarInformeMultiple(int id) {
		return daoInfo.deleteInformeMultiple(id);
	}
	
}



