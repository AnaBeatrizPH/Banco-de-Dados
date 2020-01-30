package br.org.generation.sistemaAluno.service;

import java.util.List;

import br.org.generation.sistemaAluno.model.Aluno;

public interface IAlunoService {

	public List<Aluno> recuperarTodos();
	public Aluno recuperarPorId(int id);
	public void adicionarNovoAluno(Aluno aluno); 
	public void atualizaAluno(Aluno aluno); 
	
}
