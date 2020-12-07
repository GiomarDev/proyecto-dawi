package net.farmacia.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import net.farmacia.entidad.PlanDeTrabajo;
import net.farmacia.interfaces.PlanDAO;
import utils.MySqlFactory;

public class MySqlPlanDAO implements PlanDAO{

	private SqlSessionFactory factory;
	
	public MySqlPlanDAO() {
		//instanciar objeto
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	@Override
	public List<PlanDeTrabajo> listAll() {

		List<PlanDeTrabajo> lista=new ArrayList<PlanDeTrabajo>();
		//crear una sesión de la conexión "factory"
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_listAllPlan");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

}
