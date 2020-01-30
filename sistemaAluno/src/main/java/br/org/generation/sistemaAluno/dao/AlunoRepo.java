package br.org.generation.sistemaAluno.dao;
import org.springframework.data.repository.CrudRepository;

import br.org.generation.sistemaAluno.model.Aluno;


public interface AlunoRepo extends CrudRepository<Aluno, Integer> {

	
}
