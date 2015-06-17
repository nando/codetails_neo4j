MATCH (nando:Human {name: 'Nando'}),
      (chiste:Document)-[:VÍA]->(pedaler:Human)-[:HA_PEDALEADO_EN]->(p:Project)
WHERE nando-[:HA_PEDALEADO_EN]->p AND NOT pedaler-[:HA_PEDALEADO_EN]->p
RETURN pedaler, chiste;
