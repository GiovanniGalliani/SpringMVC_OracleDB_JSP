package com.academy.businesscomponent.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Impiegato {
	private long id;
	@Size(min=2, max=30, message ="Da 2 a 30 caratteri")
	private String nome;
	@NotBlank(message="Il cognome non pu� essere nullo")
	private String cognome;
	@DecimalMin(value = "1000.00", message ="Valore minimo 1000")
	private double stipendio;
	@NotBlank(message="Il reparto non pu� essere nullo")
	@Pattern(regexp = "^[a-zA-Z]{2,50}$", message="Solo lettere accettate. Da 2 a 50 caratteri")
	private String reparto;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public double getStipendio() {
		return stipendio;
	}
	public void setStipendio(double stipendio) {
		this.stipendio = stipendio;
	}
	public String getReparto() {
		return reparto;
	}
	public void setReparto(String reparto) {
		this.reparto = reparto;
	}
	@Override
	public String toString() {
		return "Impiegato [id=" + id + ", nome=" + nome + ", cognome=" + cognome + ", stipendio=" + stipendio
				+ ", reparto=" + reparto + "]";
	}
	
	
}
