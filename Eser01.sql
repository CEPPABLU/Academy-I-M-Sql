/*
Creare una tabella di libri caratterizzata da Titolo, l'autore ed il codice ISBN.
- Inserire almeno 6 libri
- Ricercare tutti i libri di un autore
- Ricercare tutti i libri che hanno la sequenza "an" al loro interno
- Ricerca per l'ISBN
*/
--DDL
DROP TABLE IF EXISTS Libri
CREATE TABLE Libri(
	ContattoID INT PRIMARY KEY IDENTITY(1,1),
	titolo VARCHAR(50) NOT NULL,
	autore VARCHAR(50) NOT NULL,
	isbn CHAR(13) NOT NULL UNIQUE,
	categoria VARCHAR(50) DEFAULT 'N.D.'
);
-- DML
INSERT INTO Libri(titolo, autore, isbn) VALUES
('3 Metri Soana al Cielo', 'Moccia', '9738432938420');
INSERT INTO Libri(titolo, autore, isbn) VALUES
('Harry Potter e il Calice di Fuoco', 'Rowling', '9738454938420');
INSERT INTO Libri(titolo, autore, isbn) VALUES
('Il Siganre degli Anelli', 'Tolkien', '9788432938420');
INSERT INTO Libri(titolo, autore, isbn) VALUES
('Infinite Jest', 'Wallace', '9738498938420');
INSERT INTO Libri(titolo, autore, isbn) VALUES
('Febbre a 90°', 'Hornby', '9738432931520');
INSERT INTO Libri(titolo, autore, isbn, categoria) VALUES
('Harry Potter e la camera dei segreti', 'Rowling', '9738433938420', null);

-- QL
SELECT * FROM Libri;

SELECT * FROM Libri WHERE autore = 'Rowling';

SELECT * FROM Libri WHERE isbn = '9738432931520';

SELECT * FROM Libri WHERE titolo LIKE '%an%';

SELECT * FROM Libri WHERE categoria IS NULL;
SELECT * FROM Libri WHERE categoria IS NOT NULL;

SELECT * FROM Libri 
	WHERE titolo LIKE '%an%'
		OR titolo LIKE '%an%'
		OR titolo LIKE '%an%';
