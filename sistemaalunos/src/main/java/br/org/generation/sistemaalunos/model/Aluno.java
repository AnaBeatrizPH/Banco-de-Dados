package br.org.generation.sistemaalunos.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity // diz que é uma entidade persistível 
@Table(name = "tbl_aluno") // irá criar uma tabela aluno

public class Aluno {
	@Column(name="ra") // defino que o atributo agora é uma coluna da tabela
	@Id// indica a chave primária
	@GeneratedValue(strategy = GenerationType.IDENTITY)// indica que é Auto_increment
	private int ra; 
	
	
	@Column(name="nome", length = 100) //indicamos o nome e o tamanho da coluna
	private String nome; 
	
	@Column(name="email", length = 100, unique = true)
	private String email; 
	
	@Column(name="telefone", length = 25)
	private String telefone;
	
	public int getRa() {
		return ra;
	}
	public void setRa(int ra) {
		this.ra = ra;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	} 
	
}
