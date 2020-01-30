package br.org.generation.sistemaAluno.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.org.generation.sistemaAluno.dao.AlunoRepo;
import br.org.generation.sistemaAluno.model.Aluno;

@Component
public class AlunoServiceImpl implements IAlunoService{

	@Autowired
	AlunoRepo repo; 
	
	@Override
	public List<Aluno> recuperarTodos() {
		
		return (List<Aluno>)repo.findAll();

	}

	@Override
	public Aluno recuperarPorId(int ra) {
	
		return repo.findById(ra).get();
	}

	@Override
	public void adicionarNovoAluno(Aluno aluno) {
		repo.save(aluno); 
		
	}

	@Override
	public void atualizaAluno(Aluno aluno) {
		repo.save(aluno); 
		
	}
	
	

}
