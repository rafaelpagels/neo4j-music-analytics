// Lista os gêneros musicais com maior número de avaliações positivas (rating >= 4),
// destacando os gêneros mais bem avaliados pelos usuários

MATCH (u:User)-[l:LISTENED_TO]->(s:Song)-[:IN_GENRE]->(g:Genre)
WHERE l.rating >= 4
RETURN g.type AS Genres, COUNT(l.rating) AS Total_Good_Ratings
ORDER BY Total_Good_Ratings DESC
