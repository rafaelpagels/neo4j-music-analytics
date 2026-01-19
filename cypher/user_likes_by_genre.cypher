// Analisa a quantidade de likes dados por cada usuário em diferentes gêneros musicais,
// permitindo identificar preferências musicais e apoiar futuras recomendações

MATCH (u:User)-[:LIKED]->(s:Song)-[:IN_GENRE]-(g:Genre) 
RETURN u.user_name AS User, COUNT(s) AS Likes, g.type AS Genre 
ORDER BY Likes DESC
