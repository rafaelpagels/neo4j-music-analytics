// Calcula a média das avaliações dos usuários para cada gênero musical,
// permitindo identificar os gêneros mais bem avaliados da plataforma

MATCH (u:User)-[l:LISTENED_TO]->(s:Song)-[:IN_GENRE]->(g:Genre) 
RETURN g.type, avg(l.rating) AS media 
ORDER BY media DESC
