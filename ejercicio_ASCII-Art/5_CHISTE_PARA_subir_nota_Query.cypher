MATCH (chiste:Document)-[:VÍA]->(pedaler:Human),
      (pedaler:Human)-[:HA_PEDALEADO_EN]->(proyecto:Project),
      (nando:Human { name:'Nando' })
WHERE NOT (nando)-[:HA_PEDALEADO_EN]->()<-[:HA_PEDALEADO_EN]-()-
                  [:HA_PEDALEADO_EN]->()<-[:HA_PEDALEADO_EN]-(pedaler) AND
      (pedaler)-[:HA_PEDALEADO_EN]->(proyecto) AND
      NOT (chiste)-[:VÍA]->(nando)
RETURN proyecto, pedaler, chiste
