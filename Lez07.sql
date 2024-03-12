--DDL

DROP TABLE IF EXISTS Carta;
DROP TABLE IF EXISTS Persona;

CREATE TABLE Persona(
	personaID INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(250) NOT NULL,
	cognome VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE Carta(
	cartaID INT PRIMARY KEY IDENTITY(1,1),
	codice VARCHAR(250) NOT NULL UNIQUE,
	negozio VARCHAR(250) NOT NULL,
	personaRIF INT NOT NULL,
	FOREIGN KEY (personaRIF) REFERENCES Persona (personaID) ON DELETE CASCADE			--Cascade fa riferimento anche alla tabella Persona oppure SET NULL
);

INSERT INTO Persona(nome, cognome, email) VALUES
('Pippo', 'Franco', 'pip@fra.com'),
('Valeria', 'Verdi', 'val@ver.com'),
('Mario', 'Rossi', 'mar@rossi.com'),
('Marika', 'Mariko', 'mar@ko.com');

INSERT INTO Carta(codice, negozio, personaRIF) VALUES
('AB123', 'Coop', 1),
('AB124', 'Coop', 2),
('AB125', 'Coop', 3),
('CC123', 'Conad', 3),
('CC124', 'Conad', 1),
('CC125', 'Conad', 2),
('TT123', 'Tigotà', 2),
('TT124', 'Tigotà', 3),
('TT125', 'Tigotà', 1);

-- DELETE FROM Persona WHERE nome = 'Pippo';
SELECT * FROM Persona;
SELECT * FROM Carta;

SELECT nome, cognome, email, codice, negozio
	FROM Persona
	JOIN Carta ON Persona.personaID = Carta.personaRIF
	WHERE personaID = 2;

-- Voglio sapere a chi appartiene la CC125
SELECT *
	FROM Carta
	JOIN Persona ON Carta.personaRIF = Persona.personaID
	WHERE codice = 'CC125';

	-- Voglio vedere tutte le persone e el relavite carte di fedeltà
SELECT nome, cognome, email, codice, negozio
	FROM Persona
	INNER JOIN Carta ON Persona.personaID = Carta.personaRIF		--Questa è una INNER JOIN

SELECT * --nome, cognome, email, codice, negozio
	FROM Persona
	LEFT JOIN Carta ON Persona.personaID = Carta.personaRIF

SELECT nome, cognome, email, codice, negozio
	FROM Persona
	RIGHT JOIN Carta ON Persona.personaID = Carta.personaRIF