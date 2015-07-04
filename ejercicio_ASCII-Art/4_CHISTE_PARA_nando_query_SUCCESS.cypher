# Thanks to Stefan Armbruster for giving me the key to build this query
MATCH (chiste:Document)-[:VÍA]->(pedaler:Human),(nando:Human { name:'Nando' })
WHERE NOT nando-[:HA_PEDALEADO_EN]->()<-[:HA_PEDALEADO_EN]-pedaler AND
      NOT chiste-[:VÍA]->nando
RETURN chiste,pedaler
