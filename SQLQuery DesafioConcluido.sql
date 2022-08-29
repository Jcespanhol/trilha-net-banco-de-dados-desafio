

 -- Query 1

 SELECT Nome, Ano FROM Filmes

 -- Query 2

 SELECT Nome, Ano, Duracao FROM Filmes
 ORDER BY Ano
 
 -- Query 3

 SELECT Nome, Ano, Duracao FROM Filmes
 WHERE Nome = 'De volta para o futuro'


  -- Query 4

 SELECT Nome, Ano, Duracao FROM Filmes
 WHERE Ano = 1997

  -- Query 5

 SELECT Nome, Ano, Duracao FROM Filmes
 WHERE Ano > 2000
	 
  -- Query 6

 SELECT Nome, Ano, Duracao FROM Filmes
 WHERE Duracao > 100 AND Duracao < 150
 ORDER BY  Duracao 

  -- Query 7

 SELECT Ano,
 COUNT (*) Quantidade 
 FROM Filmes
 GROUP BY Ano
 ORDER BY Quantidade DESC

   -- Query 8

 SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
 WHERE Genero = 'M'
  
   -- Query 9

 SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome
 
 -- Query 10

 SELECT Filmes.Nome,
 Generos.Genero
 FROM FilmesGenero
 INNER JOIN Generos ON IdGenero = Generos.Id
 INNER JOIN Filmes ON IdFilme = Filmes.Id

 
 -- Query 11

SELECT Filmes.Nome,
 Generos.Genero
 FROM FilmesGenero
 INNER JOIN Generos ON IdGenero = Generos.Id
 INNER JOIN Filmes ON IdFilme = Filmes.Id
 WHERE Generos.Genero = 'Mistério'


 -- Query 12

 SELECT Filmes.Nome,
 Atores.PrimeiroNome,
 Atores.UltimoNome,
 Papel
 FROM ElencoFilme
 INNER JOIN Filmes ON IdFilme = Filmes.Id
 INNER JOIN Atores ON IdAtor = Atores.Id

