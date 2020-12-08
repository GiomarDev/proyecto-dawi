package net.farmacia.dao;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import net.farmacia.entidad.UnidadOrganica;
import net.farmacia.interfaces.UnidadOrganicaDAO;
import utils.MySqlFactory;

public class MySqlUnidadOrganicaDAO implements UnidadOrganicaDAO {
	//atributo
	private SqlSessionFactory factory;	
	
	
	//constructor
	public MySqlUnidadOrganicaDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	

		@Override
	public List<UnidadOrganica> listUnidadOrganica() {
		List<UnidadOrganica> lista=new ArrayList<UnidadOrganica>();
		//obtener una sesión de la conexión "factory" 
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_listAllUnidaOrganicas");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}


}






