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

/* 
2ª SOLUÇAO

CREATE TABLE matricula(
matricula INTEGER AUTO_INCREMENT PRIMARY KEY,  // Chave Burra
codCurso INTEGER,
dtMatricula DATE,  -- atributo de relacionamento 
FOREIGN KEY (matricula) REFERENCES aluno(matricula),    -- primeiro a tabela (matricula) e depois a coluna (aluno) com o atributo matricula
FOREIGN KEY (codCurso) REFERENCES curso(codCurso)
);
*/

/*
COMO EXCLUIR UMA TABELA?
drop table nome_tabela;
*/


-- ex05
CREATE TABLE func(
codfunc INTEGER,
nomefunc VARCHAR(20),
city VARCHAR(20),
cbo INTEGER,
uf CHAR(2),
codDepto INTEGER,
CONSTRAINT pk_func PRIMARY KEY (codfunc),
CONSTRAINT fk_func FOREIGN KEY (codDepto) REFERENCES departamento (codDepto)    -- CONSTRAINT dá o nome para a restriçao
);

-- ex06
ALTER TABLE func RENAME COLUMN city TO cidade;

-- ex07
ALTER TABLE func ADD COLUMN sexo CHAR(1);

-- ex08
ALTER TABLE func MODIFY COLUMN nomefunc VARCHAR(30);

-- ex09
ALTER TABLE func DROP COLUMN cbo;

-- ex10
ALTER TABLE func ALTER COLUMN uf SET DEFAULT 'RJ';   -- Tem que ser aspas simples ('')

-- ex11
ALTER TABLE func RENAME TO funcionario;

-- ex12
ALTER TABLE funcionario MODIFY COLUMN nomefunc VARCHAR(30) NOT NULL;

-- ex13
ALTER TABLE funcionario MODIFY COLUMN codfunc INTEGER AUTO_INCREMENT;







