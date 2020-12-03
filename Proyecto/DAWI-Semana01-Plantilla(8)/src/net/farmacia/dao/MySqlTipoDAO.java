package net.farmacia.dao;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import net.farmacia.entidad.Tipo;
import net.farmacia.interfaces.TipoDAO;
import utils.MySqlFactory;

public class MySqlTipoDAO implements TipoDAO{
	//atributo
	private SqlSessionFactory factory;	
		
		
	//constructor
	public MySqlTipoDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	
	
	@Override
	public List<Tipo> listAllAtLaboratorio(int idLab) {
		List<Tipo> lista=new ArrayList<Tipo>();
		//obtener una sesión de la conexión "factory" 
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_listAllTipoAtLaboratorio",idLab);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

}
