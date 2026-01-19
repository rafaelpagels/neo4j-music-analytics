// Identifica usuários que avaliaram músicas de Hip-Hop com nota >= 4,
// retornando músicas e artistas relacionados para fins de recomendação

MATCH (u:User)-[r:LISTENED_TO]->(s:Song)-[i:IN_GENRE]->(g:Genre) 
MATCH (a:Artist)<-[p:PRODUCED_BY]-(s) 
WHERE r.rating >= 4 AND g.type = "Hip-Hop" 
RETURN u, r.rating, s, a
