CREATE DATABASE T_DPS;

USE T_DPS;

CREATE TABLE Departamentos
(
	IdDepartamento INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR (200) NOT NULL UNIQUE 
);

CREATE TABLE Habilidades 
(
	IdHabilidade INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR (200) NOT NULL 
);

CREATE TABLE Funcionarios
(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL
	,DataNascimento DATE NOT NULL
	,CPF VARCHAR (200) NOT NULL
	,IdDepartamento INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento)
);

CREATE TABLE Funcionarios_Habilidades
(
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

INSERT INTO Habilidades VALUES ('Comunicação')
							,('Empatia')
							,('Proatividade')
							,('Liderança');

SELECT * FROM Habilidades;

INSERT INTO Funcionarios (Nome , DataNascimento , CPF , IdDepartamento) VALUES ('Giovanna' , '28/07/2002' , '475.037.738-47' , '4')
																			,('Emília' , '07/05/2002' , '123.456.789-10' , '3')
																			,('Matheus' , '05/11/2002' , '109.876.543-21' , '2')
																			,('Rayssa' , '01/04/2003' , '111.222.333-77' , '1');

SELECT * FROM Funcionarios;

INSERT INTO Departamentos VALUES ('Administrativo') , ('Financeiro') , ('RH') ,	('Comercial');

SELECT * FROM Departamentos;