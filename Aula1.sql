-- criando db 
CREATE SCHEMA escola;

-- conectando ao db 
USE escola;


-- ex01
CREATE TABLE aluno(
matricula INTEGER PRIMARY KEY,
nomeAluno VARCHAR(30),
sexo CHAR(1),
dtNascimento DATE
);

-- ex02
CREATE TABLE departamento(
codDepto INT PRIMARY KEY,
nomeDepto VARCHAR(30),
FOREIGN KEY (codDepto) REFERENCES curso (codCurso)
);

-- ex03
CREATE TABLE curso(
codCurso INTEGER PRIMARY KEY,
nomeCurso VARCHAR(30),
ch INT,
preco REAL
);

-- ex04 **** IMOPORTANTE
CREATE TABLE matricula(
matricula INTEGER,
codCurso INTEGER,
dtMatricula DATE,  -- atributo de relacionamento
PRIMARY KEY (matricula, codCurso), 
FOREIGN KEY (matricula) REFERENCES aluno(matricula),   -- primeiro a tabela (matricula) e depois a coluna (aluno) com o atributo matricula
FOREIGN KEY (codCurso) REFERENCES curso(codCurso)
);

/* SEGUNDA SOLUÇAO

CREATE TABLE matricula(
matricula INTEGER AUTO_INCREMENT PRIMARY KEY,  // Chave Burra
codCurso INTEGER,
dtMatricula DATE,  -- atributo de relacionamento 
FOREIGN KEY (matricula) REFERENCES aluno(matricula),   -- primeiro a tabela (matricula) e depois a coluna (aluno) com o atributo matricula
FOREIGN KEY (codCurso) REFERENCES curso(codCurso)
);
*/

/*
COMO EXCLUIR UMA TABELA?
drop table nome_tabela
*/





