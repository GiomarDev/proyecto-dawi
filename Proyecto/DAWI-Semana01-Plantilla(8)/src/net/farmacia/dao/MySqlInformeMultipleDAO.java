package net.farmacia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import net.farmacia.entidad.InformeMultiple;
import net.farmacia.interfaces.InformeMultipleDAO;
import utils.MySqlFactory;


public class MySqlInformeMultipleDAO implements InformeMultipleDAO {

	//atributo
	private SqlSessionFactory factory;	
		
		
	//constructor
	public MySqlInformeMultipleDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	
	@Override
	public int addInformeMultiple(InformeMultiple info) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.insert("SQL_SaveInformeMultiple",info);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return estado;
	}

	@Override
	public int updateInformeMultiple(InformeMultiple info) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.update("SQL_UpdateInformeMultiple",info);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return estado;
	}

	@Override
	public int deleteInformeMultiple(int id) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.delete("SQL_DeleteInformeMultiple",id);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return estado;
	}

	@Override
	public List<InformeMultiple> listInformeMultiple() {
		List<InformeMultiple> data=new ArrayList<InformeMultiple>();
		SqlSession session=factory.openSession();
		try {
			data=session.selectList("SQl_listAllInformeMultiples");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return data;
	}

	@Override
	public InformeMultiple findInformeMultiple(int id) {
		InformeMultiple info=null;
		SqlSession session=factory.openSession();
		try {
			info=(InformeMultiple) session.selectOne("SQL_FindInformeMultiple",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return info;
	}

}
