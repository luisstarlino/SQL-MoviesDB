/*****************************************************************************************
* @Author: Luis Starlino
* @Date: 2025-01-22 19:55
*****************************************************************************************/
USE Filmes; --USE DB

---------------------------------------
-- 1 | Get name and year for all movies
SELECT Nome, Ano from Filmes;

---------------------------------------
-- 2 | Get name and year for all movies, order by year (asc)
SELECT Nome, Ano from Filmes order by Ano asc;

---------------------------------------
-- 3 | Find the movie 'Back to the future' in Portuguese-Brazil title. Get only name, year and duration
SELECT Nome, Ano, Duracao from Filmes where UPPER(Nome) = 'DE VOLTA PARA O FUTURO';

---------------------------------------
-- 4 | Find all movies only release in 1997
SELECT Nome, Ano, Duracao from Filmes WHERE Ano = 1997;

---------------------------------------
-- 5 | Find all movies release after 2000
SELECT Nome, Ano, Duracao from Filmes WHERE Ano > 2000;

---------------------------------------
-- 6 | Find all movies with duration between 100 and 149, order by duration (asc)
SELECT Nome, Ano, Duracao from Filmes WHERE (Duracao > 100 AND Duracao < 150 ) ORDER BY Duracao asc;

---------------------------------------
-- 7 | Count movies by year, order by quantity desc;
SELECT Ano, Count(*) as Quantidade from Filmes group by Ano order by Quantidade desc;

---------------------------------------
-- 8 | Get male actors, returns the first and the last name
SELECT	PrimeiroNome, UltimoNome FROM Atores where Genero = 'M';

---------------------------------------
-- 9 | Get female actors, returns the id, first and the last name. Order by first name, asc.
SELECT	Id, PrimeiroNome, UltimoNome FROM Atores where Genero = 'F' order by PrimeiroNome;

---------------------------------------
-- 10 | Get name and gender from movies
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON G.Id = FG.IdGenero;

---------------------------------------
-- 11 | Get name and gender from mistery movies
SELECT F.Nome, G.Genero  FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme  INNER JOIN Generos G ON G.Id = FG.IdGenero  WHERE FG.IdGenero = 10;

---------------------------------------
-- 12 | Get movie name and actors, returns the first and last name. Including the role
Select F.Nome, EF.Papel, A.PrimeiroNome, A.UltimoNome from ElencoFilme EF INNER JOIN Filmes F ON F.Id = EF.IdFilme INNER JOIN Atores A ON A.Id = EF.IdAtor;