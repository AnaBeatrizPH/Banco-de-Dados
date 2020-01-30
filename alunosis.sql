create database sistemaDeAlunos; 
use sistemaDeAlunos; 

insert into tbl_curso (carga_horaria, departamento, nome_curso)
	values (80, "Física", "Física Moderna"), 
		   (50, "Linguística", "Linguìstica computacional"), 
		   (75, "Ciências da Computação", "Teoria dos Grafos"), 
		   (210, "Ciência de Dados", "Business Inteligence"), 
		   (60, "Matemática", "Teoria dos Conjuntos"), 
		   (48, "Computação", "Programação I");  
           
        
insert into tbl_aluno (email, nome_aluno, curso_id_curso)
values ("thiagomauricinho@bom.com", "Thiago Calegari", 5),
("anapatizinha@bol.com", "Ana Beatriz Calegari", 2),
("manuelariquinha@gmail.com", "Manuela Pires", 1),
("mateusbarbosa@gmail.com", "Matheus Barbosa", 6),
("Greta@bol.com", "Greta Rupeltinsk", 3),
("Martina@big.com", "Martina Schweisnteiger", 4),
("Nuno@yahoo.com", "Nuno Rodrigues", 1),
("juliamultimidia@hotmail.com", "Júlia Pintcher", 2),
("diegobarcelona@gmail.com", "Diego Silva", 3),
("lauranenem@gmail.com", "Laura Oliveira", 4),
("samara@gmail.com", "Samara Diógenes", 5),
("Lindoval@gmail.com", "Lindoval Carpa", 6);

insert into tbl_aluno (email, nome_aluno, curso_id_curso)
values ("karina@yahoo.com", "Karina Tudor", 1),
("dani@hotmail.com", "Daniela Pereira", 2),
("lucinda@gmail.com", "Lucinda Oliver", 3),
("rhonda@gmail.com", "Rhonda Rousey", 4),
("cyborg@gmail.com", " Cris Cyborg", 5),
("henrique@gmail.com", "Henrique Markle", 6);



select tbl_aluno.nome_aluno, tbl_curso.nome_curso from tbl_aluno inner join tbl_curso on curso_id_curso = id_curso where ra = 1; 

Delete from tbl_aluno where ra = 41; 


SELECT * FROM tbl_aluno;    
SELECT * FROM tbl_curso; 