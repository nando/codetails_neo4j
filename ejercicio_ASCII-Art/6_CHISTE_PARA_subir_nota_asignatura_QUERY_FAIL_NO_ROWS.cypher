MATCH (chiste:Document)-[:VÍA]->(pedaler:Human),(nando:Human { name:'Nando' })
WHERE NOT (nando)-[:HA_PEDALEADO_EN]->()<-[:HA_PEDALEADO_EN]-(pedaler) AND
      (nando)-[:HA_ASISTIDO_A]->()<-[:HA_ASISTIDO_A]-(pedaler) AND
      NOT (chiste)-[:VÍA]->(nando)
RETURN chiste,pedaler
