// Toda la mandanga
MATCH (d:Document)-[:VÍA]->(h)-[:HA_PEDALEADO_EN]->(p)
RETURN d, h, p;

// Toda la mandanga referenciando a nando e matizando Human y Project
MATCH (nando:Human {name: 'Nando'}),
      (d:Document)-[:VÍA]->(pedaler:Human)-[:HA_PEDALEADO_EN]->(p:Project)
RETURN p, pedaler, d, nando;

// Como el anterior pero quitando los proyectos en los que yo he pedaleado
MATCH (nando:Human {name: 'Nando'}),
      (d:Document)-[:VÍA]->(pedaler:Human)-[:HA_PEDALEADO_EN]->(p:Project)
WHERE NOT (nando)-[:HA_PEDALEADO_EN]->(p)
RETURN p, pedaler, d, nando;

// na...
MATCH (nando:Human {name: 'Nando'}),
      (d:Document)-[:VÍA]->(pedaler:Human)-[:HA_PEDALEADO_EN]->(p:Project)
RETURN d, pedaler;

// buff...
MATCH (nando:Human {name: 'Nando'}),
      (d:Document)-[:VÍA]->(pedaler:Human)-[:HA_PEDALEADO_EN]->(p:Project)
WHERE pedaler <> nando AND NOT (nando)-[:HA_PEDALEADO_EN]->(p)
RETURN d, pedaler;

// EDO y el Regalo de Ana
MATCH (pedaler:Human)-[:HA_PEDALEADO_EN]->(proyecto:Project), (nando:Human {name: 'Nando'}),
      (chiste:Document)-[:VÍA]->(graciosete:Human)-[:HA_PEDALEADO_EN]->(risas:Project)
WHERE NOT nando-[:HA_PEDALEADO_EN]->risas<-[:HA_PEDALEADO_EN]-pedaler AND graciosete <> nando
RETURN risas;

// Y no esta logro sacar sólo el proyecto en el que no he participado
MATCH (pedaler:Human)-[:HA_PEDALEADO_EN]->(proyecto:Project), (nando:Human {name: 'Nando'}),
      (chiste:Document)-[:VÍA]->(graciosete:Human)-[:HA_PEDALEADO_EN]->(risas:Project)
WHERE NOT nando-[:HA_PEDALEADO_EN]->risas AND risas<-[:HA_PEDALEADO_EN]-pedaler AND graciosete <> nando
RETURN risas;

// ...pero desde aquí, que tampoco entiendo muy bien del todo, tampoco pero si le pido chiste que
//   me muestre también el chiste me saca El Foso además del de Los Estorninos :(

// CONCLUSIÓN: TODAVÍA TENGO MUCHO QUE APRENDER
