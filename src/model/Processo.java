package model;

import java.util.Date;

public class Processo {

	private int id;
	private String numeroProcesso;
	private String linhaMaterial;
	private String eixoTematico;
	private String membroEquipe;
	private Date ld;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumeroProcesso() {
		return numeroProcesso;
	}

	public void setNumeroProcesso(String numeroProcesso) {
		this.numeroProcesso = numeroProcesso;
	}

	public String getLinhaMaterial() {
		return linhaMaterial;
	}

	public void setLinhaMaterial(String linhaMaterial) {
		this.linhaMaterial = linhaMaterial;
	}

	public String getEixoTematico() {
		return eixoTematico;
	}

	public void setEixoTematico(String eixoTematico) {
		this.eixoTematico = eixoTematico;
	}

	public String getMembroEquipe() {
		return membroEquipe;
	}

	public void setMembroEquipe(String membroEquipe) {
		this.membroEquipe = membroEquipe;
	}

	public Date getLd() {
		return ld;
	}

	public void setLd(Date ld) {
		this.ld = ld;
	}

}
