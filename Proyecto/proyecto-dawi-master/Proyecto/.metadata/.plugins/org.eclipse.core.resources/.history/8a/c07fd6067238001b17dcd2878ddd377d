package net.farmacia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import net.farmacia.entidad.Medicamento;
import net.farmacia.interfaces.MedicamentoDAO;
import utils.MySqlFactory;


public class MySqlMedicamentoDAO implements MedicamentoDAO {

	//atributo
	private SqlSessionFactory factory;	
		
		
	//constructor
	public MySqlMedicamentoDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	
	@Override
	public int addMedicamento(Medicamento med) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.insert("SQL_SaveMedicamento",med);
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
	public int updateMedicamento(Medicamento med) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.update("SQL_UpdateMedicamento",med);
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
	public int deleteMedicamento(int id) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.delete("SQL_DeleteMedicamento",id);
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
	public List<Medicamento> listMedicamento() {
		List<Medicamento> data=new ArrayList<Medicamento>();
		SqlSession session=factory.openSession();
		try {
			data=session.selectList("SQl_listAllMedicamentos");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return data;
	}

	@Override
	public Medicamento findMedicamento(int id) {
		Medicamento med=null;
		SqlSession session=factory.openSession();
		try {
			med=(Medicamento) session.selectOne("SQL_FindMedicamento",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return med;
	}


	@Override
	public Medicamento findMedicamentoFoto(int id) {
		Medicamento med=null;
		SqlSession session=factory.openSession();
		try {
			med=(Medicamento) session.selectOne("SQL_FindMedicamentoFoto",id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return med;
	}


	@Override
	public int updateFoto(Medicamento med) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.update("SQL_UpdateFoto",med);
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

}
