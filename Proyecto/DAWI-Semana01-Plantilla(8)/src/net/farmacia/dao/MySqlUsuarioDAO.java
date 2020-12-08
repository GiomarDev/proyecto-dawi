package net.farmacia.dao;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import net.farmacia.entidad.Enlace;
import net.farmacia.entidad.Usuario;
import net.farmacia.interfaces.UsuarioDAO;
import utils.MySqlFactory;
public class MySqlUsuarioDAO implements UsuarioDAO{
	
	private SqlSessionFactory factory;	
	
	
	//constructor
	public MySqlUsuarioDAO() {
		factory=MySqlFactory.getSqlSessionFactory();
	}
	
	@Override
	public Usuario iniciarSesion(Usuario bean) {
		Usuario beanU=null;
		SqlSession session=factory.openSession();
		try {
			beanU=(Usuario) session.selectOne("SQL_iniciarSesion",bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return beanU;
	}

	@Override
	public List<Enlace> traerEnlacesPorUsuario(int codUsu) {
		List<Enlace> lista=new ArrayList<Enlace>();
		//obtener una sesión de la conexión "factory" 
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_traerEnlacesPorUsuario",codUsu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

}
