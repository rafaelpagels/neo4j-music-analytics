# Music Recommendation System with Neo4j 🎧

## 📖 Descrição
Este projeto implementa um sistema de recomendação de músicas utilizando grafos no Neo4j.
O objetivo é identificar padrões de escuta dos usuários e gerar insights e recomendações
com base em avaliações, interações e preferências musicais.

## 🧩 Desafio Proposto
Você foi contratado para desenvolver um sistema de recomendação de músicas que utiliza
grafos para identificar padrões de escuta e sugerir novas faixas aos usuários.

## 🧠 Modelagem do Grafo
O grafo é composto por:
- Usuários (`User`)
- Músicas (`Song`)
- Artistas (`Artist`)
- Gêneros musicais (`Genre`)

Relacionamentos principais:
- `LISTENED_TO` (com avaliação)
- `LIKED`
- `FOLLOWED`
- `IN_GENRE`
- `PRODUCED_BY`

## 📊 Métricas Implementadas
- Média de avaliações por gênero musical
- Gêneros mais bem avaliados (avaliações ≥ 4)
- Gêneros mais ouvidos (número de plays)
- Usuários mais ativos da plataforma
- Identificação do gênero favorito de cada usuário com base em likes

## 🎯 Estratégia de Recomendação
As recomendações são baseadas em:
- Preferências explícitas dos usuários (likes)
- Avaliações positivas (ratings ≥ 4)
- Similaridade de gênero musical


## 🛠️ Tecnologias
- Neo4j
- Cypher Query Language
