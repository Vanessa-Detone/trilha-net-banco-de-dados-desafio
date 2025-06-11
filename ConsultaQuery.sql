USE Filmes;
GO

-- Exercicio 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Exercicio 2: Buscar o nome e ano dos filmes, ordenados por ano crescente
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;

-- Exercicio 3: Buscar pelo filme "De Volta para o Futuro", trazendo nome, ano e dura��o
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

-- Exercicio 4: Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- Exercicio 5: Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- Exercicio 6: Buscar os filmes com duracao entre 100 e 150, ordenados pela duracao
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- Exercicio 7: Contar filmes lan�ados por ano, ordenando pela quantidade decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- Exercicio 8: Buscar os atores do g�nero masculino (com coluna de g�nero vis�vel)
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M';

-- Exercicio 9: Buscar as atrizes (g�nero feminino), ordenando pelo primeiro nome (com coluna de g�nero vis�vel)
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

-- Exercicio 10: Buscar o nome do filme e o g�nero
SELECT f.Nome AS Filme, g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON g.Id = fg.IdGenero;

-- Exercicio 11: Buscar nome do filme e g�nero "Mist�rio"
SELECT f.Nome AS Filme, g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mist�rio';

-- Exercicio 12: Buscar o nome do filme e os atores com o papel
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
