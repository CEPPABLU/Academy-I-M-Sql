-- Sono un commento 
/* 
	Sono un commento 
	multilinea
*/

--DDL
-- Persona(nome, cognome, telefono, cod_fis)
DROP TABLE IF EXISTS Persona;
CREATE TABLE Persona(					-- Statement non può avere comportamenti parziali
	nome VARCHAR(50) NOT NULL,			-- VARCHAR alloca caratteri in base al numero dei caratteri inseriti (stile fisarmonica)
	cognome VARCHAR(50) NOT NULL,			-- CHAR alloca 50 caratteri
	telefono VARCHAR(50),				-- NOT NULL non è ozpionale
	cod_fis	CHAR(16) NOT NULL,			--UNIQUE
	UNIQUE(cod_fis)						-- modo esplicito di definire UNIQUE
);
-- Persona è un contenitore di Tuple (riga che non ha contenuto omogeneo)

-- DROP TABLE Persona;			-- DROP elimina la tabella

-- Aggiunta di una colonna
ALTER TABLE Persona 
	ADD email VARCHAR(50) NOT NULL;

-- Eliminazione di una colonna
ALTER TABLE Persona DROP COLUMN email;

-- Modifica di una colonna (non posso cambiare il nome di una colonna)
ALTER TABLE Persona ALTER COLUMN email VARCHAR(100) NOT NULL;

-- DML
INSERT INTO Persona(nome, cognome, telefono, cod_fis) VALUES
('Pippo','Franco','+393535223','GHFJDFJ'),
('Pippo', 'Baudo', '+3924114', 'GDSISDFJ');  -- Creazione di AFFECTED ROWS

-- QL
SELECT * FROM Persona;


