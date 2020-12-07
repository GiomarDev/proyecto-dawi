package net.farmacia.interfaces;
import java.util.List;

import net.farmacia.entidad.InformeMultiple;
public interface InformeMultipleDAO {
	public int addInformeMultiple(InformeMultiple med);
	public int updateInformeMultiple(InformeMultiple med);
	public int deleteInformeMultiple(int id);
	public List<InformeMultiple> listInformeMultiple();
	public InformeMultiple findInformeMultiple(int id);
}

