package br.org.generation.sistemaAluno.dao;
import org.springframework.data.repository.CrudRepository;

import br.org.generation.sistemaAluno.model.Curso;

public interface CursoRepo extends CrudRepository <Curso, Integer> {

}
