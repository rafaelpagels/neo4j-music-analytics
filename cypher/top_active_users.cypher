// Identifica os 10 usuários mais ativos da plataforma
// com base na quantidade total de músicas ouvidas

MATCH (u:User)-[l:LISTENED_TO]->(s:Song) 
RETURN u, COUNT(l) AS total_plays 
ORDER BY total_plays DESC 
LIMIT 10;
