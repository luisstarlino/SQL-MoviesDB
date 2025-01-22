/*****************************************************************************************
* @Author: Luis Starlino
* @Date: 2025-01-22 19:55
*****************************************************************************************/
--USE Filmes; #USE DB

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
-- 7 | Count movies by year, order by duration desc;
SELECT Ano, Count(*) as Quantidade from Filmes group by Ano;
--Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
