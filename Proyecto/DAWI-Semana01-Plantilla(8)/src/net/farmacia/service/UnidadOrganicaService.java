package net.farmacia.service;
import java.util.List;
import net.farmacia.dao.MySqlUnidadOrganicaDAO;
import net.farmacia.entidad.UnidadOrganica;
public class UnidadOrganicaService {
	//
	private MySqlUnidadOrganicaDAO daoUniO;
	
	public UnidadOrganicaService() {
		daoUniO=new MySqlUnidadOrganicaDAO();
	}
	public List<UnidadOrganica> listaUnidadOrganicas(){
		return daoUniO.listUnidadOrganica();
	}
	
	
}



