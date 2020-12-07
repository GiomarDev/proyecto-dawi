package net.farmacia.action;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.farmacia.entidad.Medicamento;
import net.farmacia.service.MedicamentoService;
@ParentPackage("dawi")
public class MedicamentoAction extends ActionSupport{
	//atributos
	private List<Medicamento> listaMedicamentos;//tabla
	private Medicamento medicamento;//formulario controles
	private int codigo;// eliminar,buscar y foto
	//atributo para almacenar el cifrado de los bytes del atributo foto 
	private String baseFoto;	
	//objeto del servicio medicamento
	private MedicamentoService servicioMed;
	
	
	//crear un atributo de la clase Map de tipo session
	private Map<String,Object> session=ActionContext.getContext().getSession();
	
	
	//constructor
	public MedicamentoAction() {
		servicioMed=new MedicamentoService();
	}
	
	@Action(value = "/listAllMedicamentos",results = {@Result(name="ok",type="json")})
	public String listAllMedicamentos() {
		listaMedicamentos=servicioMed.listarMedicamentos();
		return "ok";
	}
	@Action(value = "/findMedicamento",results = {@Result(name="ok",type="json")})
	public String findMedicamento() {
		medicamento=servicioMed.buscarMedicamento(codigo);
		return "ok";
	}
	
	@Action(value = "/findFotoMedicamento",results = {@Result(name="ok",type="json")})
	public String findFotoMedicamento() {
		//buscar por ID de medicamento y obtener foto
		Medicamento bean=servicioMed.findMedicamentoFoto(codigo);
		//validar bean
		if(bean!=null)
			//cifrar en Base64 los bytes del atributo foto
			baseFoto=Base64.getEncoder().encodeToString(bean.getFoto());
		else
			baseFoto=null;
		return "ok";
	}
	
	
	@Action(value = "/saveMedicamento",results = {@Result(name="ok",type="redirect",location = "/medicamento.jsp")})
	public String saveMedicamento() throws IOException {
		int resu;
		//validar el atributo idMedicamento
		if(medicamento.getIdMedicamento()==0){
			//validar el atributo "archivo"
			if(medicamento.getArchivo()!=null) {
				//obtener la imagen seleccionada de la vista y convertirlo en binario "stream"
				InputStream is=new FileInputStream(medicamento.getArchivo());
				//crear un arreglo de bytes con el tamaño del archivo is
				byte[] info=new byte[is.available()];
				//leer el binario y enviar su contenido al arreglo "info" 
				is.read(info);
				//setear el atributo foto con los bytes del arreglo "info"
				medicamento.setFoto(info);
			}
			else//no se ha seleccionado archivo
				medicamento.setFoto(null);
				
			resu=servicioMed.registrarMedicamento(medicamento);
			if(resu!=-1)
				session.put("MENSAJE", "Registro guardado correctamente");
			else
				session.put("MENSAJE", "Error en el registro");
		}
		else {
			resu=servicioMed.actualizarMedicamento(medicamento);
			if(resu!=-1)
				session.put("MENSAJE", "Registro actualizado correctamente");
			else
				session.put("MENSAJE", "Error en la actualización");
		}
		
		return "ok";
	}
	

	@Action(value = "/deleteMedicamento",results = {@Result(name="ok",type="redirect",location = "/medicamento.jsp")})
	public String deleteMedicamento() {
		int resu;
		resu=servicioMed.eliminarMedicamento(codigo);
		if(resu!=-1)
			session.put("MENSAJE", "Registro eliminado correctamente");
		else
			session.put("MENSAJE", "Error en la eliminación");
		
		
		return "ok";
	}	
	
	@Action(value = "/updateFoto",results = {@Result(name="ok",type="redirect",
										location = "/medicamento.jsp")})
	public String updateFoto() throws IOException {
		//obtener la imagen seleccionada de la vista y convertirlo en binario "stream"
		InputStream is=new FileInputStream(medicamento.getArchivo());
		//crear un arreglo de bytes con el tamaño del archivo is
		byte[] info=new byte[is.available()];
		//leer el binario y enviar su contenido al arreglo "info" 
		is.read(info);
		//setear el atributo foto con los bytes del arreglo "info"
		medicamento.setFoto(info);
		servicioMed.actualizarFoto(medicamento);
		return "ok";
	}
	
	
	
	
	public List<Medicamento> getListaMedicamentos() {
		return listaMedicamentos;
	}
	public void setListaMedicamentos(List<Medicamento> listaMedicamentos) {
		this.listaMedicamentos = listaMedicamentos;
	}
	public Medicamento getMedicamento() {
		return medicamento;
	}
	public void setMedicamento(Medicamento medicamento) {
		this.medicamento = medicamento;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getBaseFoto() {
		return baseFoto;
	}

	public void setBaseFoto(String baseFoto) {
		this.baseFoto = baseFoto;
	}
	
}




