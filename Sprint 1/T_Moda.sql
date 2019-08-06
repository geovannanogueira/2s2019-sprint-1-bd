CREATE DATABASE T_Moda;

USE T_Moda;

CREATE TABLE Marcas
(
	IdMarcas INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Tamanhos
(
	IdTamanho INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200) NOT NULL
);

CREATE TABLE Cores
(
	IdCor INT PRIMARY KEY IDENTITY 
	,Nome	VARCHAR (200) NOT NULL
);
CREATE TABLE Camisetas
(
	IdCamiseta INT PRIMARY KEY IDENTITY
	,IdMarca INT FOREIGN KEY REFERENCES Marcas (IdMarcas)
	,IdTamanho INT FOREIGN KEY REFERENCES Tamanhos (IdTamanho)
	,IdCor INT FOREIGN KEY REFERENCES Cores (IdCor)
	,Descricao VARCHAR (200) NOT NULL
);

INSERT INTO Cores VALUES ('Branca') , ('Vermelho') , ('Azul') , ('Roxo') , ('Verde');

INSERT INTO Tamanhos VALUES ('P')
							,('M')
							,('G')
							,('GG');

INSERT INTO Marcas VALUES ('Khelf')
						,('Forever 21')
						,('Marisa');

SELECT * FROM Cores;
SELECT * FROM Marcas;
SELECT * FROM Camisetas;
SELECT * FROM Cores;

INSERT INTO Camisetas (IdMarca , IdTamanho , IdCor , Descricao)
			VALUES	('3' , '2' , '2' , 'gola alta')
					,('2' , '4' , '4' , 'gola u')
					,('1' , '1' , '3' , 'gola polo')
					,('3' , '3' , '5' , 'gola v');

UPDATE Camisetas 
SET IdMarca = 2
WHERE IdMarca = 1

