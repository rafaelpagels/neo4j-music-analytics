// Identifica os gêneros musicais com maior número de plays,
// destacando os gêneros mais populares da plataforma

MATCH (u:User)-[l:LISTENED_TO]->(s:Song)-[i:IN_GENRE]-(g:Genre) 
RETURN COUNT(l) AS total_plays, g.type AS Genres 
ORDER BY total_plays DESC
