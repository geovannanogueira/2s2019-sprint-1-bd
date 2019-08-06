USE T_SStop;

SELECT * FROM Estilos

SELECT * FROM Estilos
WHERE IdEstilo = 1;

SELECT * FROM Estilos
WHERE Nome = 'Rock/n roll';

SELECT * FROM Estilos
WHERE Nome Like 'Rock/n roll';

SELECT * FROM Estilos
WHERE Nome Like 'Rock/n%';

SELECT * FROM Estilos
WHERE Nome Like '%ock/n roll';

SELECT Artistas.*, Estilos.*
FROM Artistas FULL JOIN Estilos ON Artistas.IdEstilo = Estilos.IdEstilo

INSERT INTO Artistas (Nome)
	VALUES ('Zeca')

INSERT INTO Estilos
	VALUES ('Trap')

