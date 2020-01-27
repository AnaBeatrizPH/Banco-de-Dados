package br.org.generation.sistemaalunos.servicos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.org.generation.sistemaalunos.dao.IAlunoBD;
import br.org.generation.sistemaalunos.model.Aluno;

@Component
public class ServicoAlunos implements IAlunoService {
	
	@Autowired // indica que o gereciamento desse objeto é por conta do SpringBoot
	IAlunoBD repo; //respositório(alusão ao banco de dados)

	@Override
	public void gravarAlunoNoBanco(Aluno aluno) {
		try {
		repo.save(aluno); 
	}
		catch(Exception ex) {
			throw new RuntimeException("Erro ao inserir aluno"); 
			}
		}

	@Override
	public void atualizarAlunoNoBanco(Aluno aluno) {
		try {
			repo.save(aluno); 
		}
			catch(Exception ex) {
				throw new RuntimeException("Erro ao inserir novo aluno!"); 
				}
	}

	@Override
	public Aluno recuperarAlunoPorId(int id) {
			return repo.findById(id).get();
	}
	

	
	
}
