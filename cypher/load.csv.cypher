//Criação dos nós e relacionamentos através do CSV

LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=12ssgAQm9rLMCPJZ28S-DwyFDCBk6HoTR&export=download' AS row

MERGE (u:User {user_id: row.USERID})
  SET u.user_name = row.USERNAME

MERGE (s:Song {track_id: row.TRACKID})
  SET s.track_name = row.TRACKNAME

MERGE (a: Artist {artist_name: row.ARTIST})

MERGE (g:Genre {type: row.GENRE})

MERGE (u)-[:LISTENED_TO {rating: toFloat(row.RATING)}]->(s)

MERGE (s)-[:PRODUCED_BY]->(a)

MERGE (s)-[:IN_GENRE]->(g)

MERGE (u)-[:FOLLOWED]->(a)

MERGE (u)-[:LIKED]->(s)
