CREATE
  (el_evento:Document
    {title: "EL EVENTO", desc: "al viento"}),
  (el_foso:Document
    {title: "EL FOSO", desc: "con nitroso"}),
  (los_estorninos:Document
    {title: "Los estorninos", desc: "en el camino"}),

  (edo:Project {name: "Espacio de Ocio"}),
  (primeriti:Project {name:"Primeriti"}),
  (rda:Project {name: "Regalo de Ana"}),

  (nando:Human {name: 'Nando'}),
  (carlos:Human {name: 'Carlos'}),
  (isa:Human {name: 'Isa'}),
  (alex:Human {name: 'Alex'}),
  (freddy:Human {name: 'Freddy'}),
  (pau:Human {name: 'Pau'}),

  (nando)-[:HA_PEDALEADO_EN]->(primeriti),
  (nando)-[:HA_PEDALEADO_EN]->(rda),
  (carlos)-[:HA_PEDALEADO_EN]->(edo),
  (carlos)-[:HA_PEDALEADO_EN]->(rda),
  (isa)-[:HA_PEDALEADO_EN]->(edo),
  (isa)-[:HA_PEDALEADO_EN]->(rda),
  (alex)-[:HA_PEDALEADO_EN]->(primeriti),
  (alex)-[:HA_PEDALEADO_EN]->(edo),
  (alex)-[:HA_PEDALEADO_EN]->(rda),
  (freddy)-[:HA_PEDALEADO_EN]->(primeriti),
  (freddy)-[:HA_PEDALEADO_EN]->(rda),
  (pau)-[:HA_PEDALEADO_EN]->(edo),

  (el_evento)-[:VÍA]->(nando),
  (el_foso)-[:VÍA]->(carlos),
  (los_estorninos)-[:VÍA]->(pau),

  // Incorporaciones al grafo para poder subir nota (ejercicio 2)
  (spp:Project {name: "SuperPerfumerias"}),
  (pau)-[:HA_PEDALEADO_EN]->(spp),
  (alsanars:Human {name: 'Álvaro'}),
  (alsanars)-[:HA_PEDALEADO_EN]->(spp),
  (el_microsite:Document
    {title: "El Microsite", desc: "in the sky"}),
  (el_microsite)-[:VÍA]->(alsanars),

  // Incorporamos elementos para subir nota en la asignatura :)
  (ror_conf:Event {name: "Conferencia Rails"}),
  (ux_spain:Event {name: "Ux Spain"}),
  (pau)-[:HA_ASISTIDO_A]->(ux_spain),
  (alsanars)-[:HA_ASISTIDO_A]->(ror_conf)
RETURN *;
