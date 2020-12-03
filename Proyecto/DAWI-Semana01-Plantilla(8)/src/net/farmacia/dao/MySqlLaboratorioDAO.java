package net.farmacia.dao;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import net.farmacia.entidad.Laboratorio;
import net.farmacia.interfaces.LaboratorioDAO;
import utils.MySqlFactory;

public class MySqlLaboratorioDAO implements LaboratorioDAO {
	//atributo
	private SqlSessionFactory factory;	
	
	
	//constructor
	public MySqlLaboratorioDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	@Override
	public int addLaboratorio(Laboratorio lab) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateLaboratorio(Laboratorio lab) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteLaboratorio(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Laboratorio> listLaboratorio() {
		List<Laboratorio> lista=new ArrayList<Laboratorio>();
		//obtener una sesión de la conexión "factory" 
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_listAllLaboratorios");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

	@Override
	public Laboratorio findLaboratorio(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}






