package net.farmacia.interfaces;

import java.util.List;

import net.farmacia.entidad.FormatoRAI;

public interface FormatoDAO {
	public List<FormatoRAI> listAll();
	
	public int saveFormato(FormatoRAI bean);
	
	public int deleteFormato(int id);

	public int updateFormato(FormatoRAI form);

	public FormatoRAI findFormato(int id);
}

