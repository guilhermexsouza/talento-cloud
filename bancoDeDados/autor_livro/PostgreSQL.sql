CREATE TABLE autor (
  id_autor SERIAL PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE livro (
  id_livro SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  ano INT,
  fk_id_autor INT,
  FOREIGN KEY (fk_id_autor) REFERENCES autor (id_autor)
);

INSERT INTO autor (nome)
VALUES
	('Leonard Mlodinow'),
    ('Cristiane Correa'),
    ('Paulo Coelho');

INSERT INTO livro (nome, ano, fk_id_autor)
VALUES
	('O andar do bêbado', 2008, 1),
	('Subliminar', 2012, 1),
	('Elástico', 2018, 1),
	('Sonho Grande', 2013, 2),
	('Vicenti Falconi', 2017, 2),
	('Abilio', 2015, 2),
	('Bíblia', 0, NULL);
    
SELECT autor.id_autor, autor.nome AS autor, livro.nome as nome_livro FROM autor
INNER JOIN livro
ON autor.id_autor = livro.fk_id_autor;

SELECT autor.id_autor, autor.nome AS autor, livro.nome as nome_livro FROM autor
LEFT JOIN livro
ON autor.id_autor = livro.fk_id_autor;

SELECT autor.id_autor, autor.nome AS autor, livro.nome as nome_livro FROM autor
RIGHT JOIN livro
ON autor.id_autor = livro.fk_id_autor;

SELECT autor.id_autor, autor.nome AS autor, livro.nome as nome_livro FROM autor
FULL JOIN livro
ON autor.id_autor = livro.fk_id_autor;

