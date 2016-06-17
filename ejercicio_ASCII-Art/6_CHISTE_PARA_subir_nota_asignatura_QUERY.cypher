MATCH (proyecto:Project),
      (evento:Event),
      (nando:Human { name:'Nando' }),
      (chiste:Document)-[:VÍA]->(pedaler:Human)
WHERE NOT (chiste)-[:VÍA]->(nando) AND
      NOT (pedaler)-[:HA_PEDALEADO_EN]->()<-[:HA_PEDALEADO_EN]-(nando) AND
      (pedaler)-[:HA_PEDALEADO_EN]->(proyecto) AND
      (pedaler)-[:HA_ASISTIDO_A]->(evento)<-[:HA_ASISTIDO_A]-(nando)
RETURN chiste,pedaler,proyecto,evento
