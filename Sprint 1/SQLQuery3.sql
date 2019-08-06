CREATE DATABASE T_Livros;

USE T_Livros;

CREATE TABLE Generos
(
	IdGenero INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Autores
(
	IdAutor INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL 
	,Email VARCHAR (200) NOT NULL
	,Ativo BIT NOT NULL 
	,DataNascimento INT NOT NULL
);

CREATE TABLE Livros 
(
	IdLivro INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200) NOT NULL
	,IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
	,IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

INSERT INTO Generos(Descricao) VALUES ('Ação')
									,('Aventura')
									,('Romance');

SELECT * FROM Generos

INSERT INTO Autores (Nome, Email, Ativo, DataNascimento) VALUES ('Fernando' , 'teste@teste.com' , '0' , 1978)
																,('Helena' , 'teste@teste.com' , '1' , 2000)
																,('Roberto' , 'roberto@possarle.com' , '0', 7444);

SELECT * FROM Autores

INSERT INTO Livros (Nome, IdAutor, IdGenero) VALUES ('ATDM')
													,('ATDC')
													,('Senhor dos Aneis');

SELECT * FROM Livros
