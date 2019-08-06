-- criar banco de dados
CREATE DATABASE T_PSales;

-- COLOCAR O BANCO DE DADOS EM USO
USE T_PSales;

-- DDL - Data Definition Language

-- criar a tabela de cursos
CREATE TABLE Cursos
(
	-- tipo de dados, pk, fk
	IdCurso		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

--CRIAR A TABELA DE DISCIPLINAS
CREATE TABLE Disciplinas
(
	IdDisciplina	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(250) NOT NULL
	,IdCurso		INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

--CRIAR A TABELA DE ALUNOS 
CREATE TABLE Alunos
(
	IdAlunos	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

-- CRIAR A TABELA INTERMEDIÁRIA DE ALUNOS E CURSOS (VINCULAR)
CREATE TABLE CursosAlunos
(
	IdCurso		INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAlunos	INT FOREIGN KEY REFERENCES Alunos (IdAlunos)
);

-- INSERIR REGISTROS
-- inserir em algum local alguma coisa
--inserir into nome_tabela (colunas) values (valores)
INSERT INTO Cursos (Nome) VALUES ('Técnico em Dev. Sistemas');
--a,	b,	c
-- (''.	'', '')

--considerar as colunas em ordem
INSERT INTO Cursos VALUES ('Técnico em Redes');

-- inserir mais de um registro por vez
INSERT INTO Cursos VALUES ('Curso A')
						,('Curso B')
						,('Curso C');

SELECT IdCurso, Nome
	FROM Cursos;

SELECT Nome
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT *
	FROM Cursos
	WHERE IdCurso = 1;

-- atualizacao
-- Técnico em Desenvolvimento de Sistemas
-- update tabela set qual_coluna = novo_valor condicao
UPDATE Cursos 
	SET Nome = 'Técnico em Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;

INSERT INTO Disciplinas (Nome   ,  IdCurso)
	VALUES				('HTML' ,     1   );

SELECT *
	FROM Disciplinas;

SELECT * FROM Cursos;

DELETE FROM Cursos
WHERE IdCurso = 5;

-- CRUD
-- create, read, update, delete
-- insert, select, update, delete

select * from Cursos
select * from Disciplinas

from Disciplinas 
join Cursos 
on Disciplinas.IdCurso = Cursos.IdCurso