CREATE DATABASE T_SStop;

USE T_SStop;

CREATE TABLE Estilos
(
	IdEstilo	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Artistas 
(
	IdArtista	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(250) NOT NULL 
	,IdEstilo	INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

INSERT INTO Estilos VALUES ('Rock\n Roll')
						,('Metal')
						,('MPB')
						,('Funk')
						,('Sertanejo')
						,('Pagode')
						,('Samba')
						,('Gospel');

INSERT INTO Artistas (Nome, IdEstilo)
	VALUES			('Legião Urbana' , 1)
					,('Metalica' , 2)
					,('Djavan' , 3)
					,('Dj Guuga', 4)
					,('Simone e Simaria' , 5)
					,('Turma do Pagode' , 6)
					,('Zeca Pagodinho' , 7)
					,('Gabriela Rocha' , 8);

SELECT *
	FROM Artistas;

UPDATE Artistas
	SET Nome = 'Legião Urbana'
	WHERE IdArtista = 1;

SELECT * 
	FROM Artistas;

UPDATE Artistas
	SET Nome = 'Djavan'
	WHERE IdArtista = 3;

DELETE FROM Estilos
WHERE IdEstilo = 2;


