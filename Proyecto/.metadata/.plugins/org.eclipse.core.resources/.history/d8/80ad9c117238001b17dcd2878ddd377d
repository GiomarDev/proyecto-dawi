package net.farmacia.service;
import java.util.List;

import net.farmacia.dao.MySqlMedicamentoDAO;
import net.farmacia.dao.MySqlTipoDAO;
import net.farmacia.entidad.Medicamento;
import net.farmacia.entidad.Tipo;

public class MedicamentoService {
	//
	private MySqlMedicamentoDAO daoMed;
	//
	private MySqlTipoDAO daoTipo;
	
	public MedicamentoService() {
		daoMed=new MySqlMedicamentoDAO();
		daoTipo=new MySqlTipoDAO();
	}
	
	public List<Medicamento> listarMedicamentos(){
		return daoMed.listMedicamento();
	}
	public Medicamento buscarMedicamento(int id) {
		return daoMed.findMedicamento(id);
	}
	public int registrarMedicamento(Medicamento bean) {
		return daoMed.addMedicamento(bean);
	}
	public int actualizarMedicamento(Medicamento bean) {
		return daoMed.updateMedicamento(bean);
	}
	public int eliminarMedicamento(int id) {
		return daoMed.deleteMedicamento(id);
	}
	public Medicamento findMedicamentoFoto(int id) {
		return daoMed.findMedicamentoFoto(id);
	}
	public int actualizarFoto(Medicamento bean) {
		return daoMed.updateFoto(bean);
	}
	public List<Tipo> listAllTipoAtLaboratorio(int idLab){
		return daoTipo.listAllAtLaboratorio(idLab);
	}
	
	
}



