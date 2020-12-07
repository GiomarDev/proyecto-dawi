package net.farmacia.entidad;


public class InformeMultiple {
	private int idInformeMultiple;
	private String de;
	private String para;
	private String fec_creacion;
	private String fec_modificacion;
	private String asunto;
	private String motivo;
	private int idUnidadOrganica;
	private int idUsuario;
	//consulta
	private String nomUnidadOrganica;
	private String nomidUsuario;
	public int getIdInformeMultiple() {
		return idInformeMultiple;
	}
	public void setIdInformeMultiple(int idInformeMultiple) {
		this.idInformeMultiple = idInformeMultiple;
	}
	public String getDe() {
		return de;
	}
	public void setDe(String de) {
		this.de = de;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getFec_creacion() {
		return fec_creacion;
	}
	public void setFec_creacion(String fec_creacion) {
		this.fec_creacion = fec_creacion;
	}
	public String getFec_modificacion() {
		return fec_modificacion;
	}
	public void setFec_modificacion(String fec_modificacion) {
		this.fec_modificacion = fec_modificacion;
	}
	public String getAsunto() {
		return asunto;
	}
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}
	public String getMotivo() {
		return motivo;
	}
	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}
	public int getIdUnidadOrganica() {
		return idUnidadOrganica;
	}
	public void setIdUnidadOrganica(int idUnidadOrganica) {
		this.idUnidadOrganica = idUnidadOrganica;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNomUnidadOrganica() {
		return nomUnidadOrganica;
	}
	public void setNomUnidadOrganica(String nomUnidadOrganica) {
		this.nomUnidadOrganica = nomUnidadOrganica;
	}
	public String getNomidUsuario() {
		return nomidUsuario;
	}
	public void setNomidUsuario(String nomidUsuario) {
		this.nomidUsuario = nomidUsuario;
	}
	
	
}
