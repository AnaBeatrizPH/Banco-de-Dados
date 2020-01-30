package br.org.generation.sistemaAluno.service;

import java.util.List;

import br.org.generation.sistemaAluno.model.Curso;

public interface ICursoService {
	
	public void adicionarNovoCurso(Curso curso);
	public Curso recuperarDetalhes(int id);
	public List<Curso> recuperarTodos();
	
	

}
