--DDL 
DROP TABLE IF EXISTS Contatto
CREATE TABLE Contatto(
	ContattoID INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50) NOT NULL,
	cognome VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	cod_fis CHAR(16) NOT NULL UNIQUE
 
);
 
--INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
--('Giovanni','Pace','gio@pace.com','PCAGNN'),
--('Valeria','Verdi','vale@verdi.com','VLRVRD'),
--('Tiziano','Titone','tiz@titone.com','PCAGNN'),
--('Marika','Mariko','mar@mar.com','MARMAR');

INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Giovanni','Pace','gio@pace.com','PCAGNN');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Valeria','Verdi','vale@verdi.com','VLRVRD');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Mario','Rossi','tiz@titone.com','MARRSS');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Marika','Mariko','mar@mar.com','MARMAR');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Mario','Mariottide','mar@mar.com','MARMTD');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Maria','Mariani','mar@mrn.com','MARMRN');
INSERT INTO Contatto(nome,cognome,email,cod_fis) VALUES
('Mariolino','Mariottide','mar@mrd.com','MRNMTD');

-- QL (Query Language)
--SELECT * FROM Contatto;		-- Risultato di proiezione

-- ALIAS
SELECT nome AS 'FirstName', cognome AS 'Last Name', email AS Email FROM Contatto;

-- RICERCA
SELECT * FROM Contatto WHERE nome = 'Mario' AND cognome= 'Rossi' OR nome= 'Giovanni';

SELECT * FROM Contatto WHERE nome = 'Mario' OR nome= 'Giovanni';

SELECT * FROM Contatto WHERE nome IN('Mario', 'Giovanni', 'Marika');

SELECT * FROM Contatto WHERE nome <> 'Mario';	-- <> sta a significare diverso da

--LIKE --Espressioni regolari
-- Tutto ciò che inizia per Ma...
SELECT * FROM Contatto WHERE nome LIKE 'Ma%';  
-- Tutto ciò che finisce per ...io
SELECT * FROM Contatto WHERE nome LIKE '%io'; 
-- Tutto ciò che continete almeno una volta ...io...
SELECT * FROM Contatto WHERE nome LIKE '%io%';
-- Ricerca puntuale
SELECT * FROM Contatto WHERE nome LIKE 'Mari__';

