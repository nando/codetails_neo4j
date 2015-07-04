# encoding: utf-8

center <<-EOS
  \e[1mNEO4J\e[0m
  (los grafos y yo)

  nando @colgado
  ©TCK Codetails 2015
EOS

block <<-EOS
  Prólogo: desde "\e[1mEl Piódromo\e[0m" hasta...

  Cap. I:   \e[1mBBDD de Grafos\e[0m

  Cap. II:  \e[1mENTORNO NEO4J\e[0m

  Cap. III: \e[1mCYPHER\e[0m
EOS

block <<-EOS
  * Codetails \e[1mEl Piódromo\e[0m
  * Dromadiction Updates

   (dromes)
      │
      └----[TO]---->(o_reilly)

  * Graph Databases: base académica
EOS

block <<-EOS
  * neo4j (Apache Lucene inside!)
   - NeoTech. Inc. define Cypher
   - NO "Stardard Graph Language"
   - Pero es libre (GPL)
   - Escandinavo (like Linux, RAILS...)
EOS

center <<-EOS
  os iba yo a decir:

  los grafos...
  ¡son un nuevo paradigma!

  pero Álvaro y Scala ayer...
  \e[1m¿es un nuevo paradigma?\e[0m
EOS

center <<-EOS
  nueva manera de pensar
  en la capa de datos
  \e[1mTRANSVERSAL\e[0m
  a todos los paradigmas
EOS

section "\e[1mBBDD de Grafos\e[0m" do
  center <<-EOS
    
    Nodos y Relaciones
    
  EOS


  block <<-EOS
    Nodo:
      └─ una o más parejas clave-valor

    Relación:
      ├─ expresión que une dos nodos (en un sentido)
      └─ cero, una o más parejas clave-valor
  EOS

  block <<-EOS
     Ejemplos de nodo:

     (name: "Lourdes",
      birthdate: "2013-01-06")

     (name: "Daniel")
  EOS

  block <<-EOS
    Ejemplos de relaciones:

    ()-[:DAD]->()

    ()-[:PARENT {type: "mum"}]->()
  EOS

  center <<-EOS
    Los datos \e[1mNO TIENEN ESQUEMA\e[0m

    NO EXISTE UNA
    DEFINICIÓN EXPLÍCITA
    DEL MODELO DE DATOS
  EOS

  center <<-EOS
    (por lo tanto)

    BYE BYE migrations!!!

    :_( they were "agile":_)
  EOS

  center <<-EOS
    bye bye DENORMALIZATIONS!!!


    (i wont miss them at all)
  EOS

  center <<-EOS
    Escalando...

    SEE YOU
 (better if not)
   SHARDING!!!
  EOS

  center <<-EOS
    What the f*ck are
    you still doing here
    MASTER-SLAVE
    replication???
  EOS

  block <<-EOS
    (a P2P techology similar to

         bitCoin's blockChain

      will overcome this someday)
  EOS

  block <<-EOS
    (...and I think it will give
       \e[1mUS\e[0m (a.k.a. each pear)

        \e[1mAN IDENTITY\e[0m

      for the same price)
  EOS

  center <<-EOS
    we have auto-indexing, but...
    \e[1mEXPLICIT INDEX DEFINITIONS\e[0m
    
    arePOSSIBLEand
    (an important)

    \e[1mPART OF OUR WORK\e[0m
    (to improve \e[1mperformance\e[0m)
  EOS

  center <<-EOS
    \e[1m¡¡¡NO PROBLEM!!!\e[0m

    it was
    MY FAVOURITE WAY
    to boost it
    at
    \e[1mLaCoctelera\e[0m
  EOS

  center <<-EOS
    ...y mucho menos si

    \e[1mADEMÁS\e[0m

    los índices vienen
    acompañados de

    \e[1mOTRA FEATURE\e[0m
    (y brutal IMHO)
  EOS

  center <<-EOS
    GOODBYE DATA TYPES!!!
  EOS

  center <<-EOS
    las claves son \e[1msímbolos\e[0m

    y

    los valores son \e[1mcadenas\e[0m
  EOS

  center <<-EOS
    si quieres rendimiento...
    
    \e[1mCREATE INDEX ON field\e[0m
  EOS

  center <<-EOS
    quizás Neo4j guarde en
    crudo los números...
    
    quiero probar con los
    timestamps de
    mis dromos
    (algún día)
  EOS

  center <<-EOS
    \e[1mMODELO DEFINIDO IMPLÍCITAMENTE\e[0m
    dentro de los propios datos.

    Los datos (y su "modelo") evolucionan
    de forma \e[1mÁGIL\e[0m con los requisitos
  EOS

  center <<-EOS
    Yo lo veo como

    \e[1mLA INVASION DEL AGILISMO\e[0m
      (por fin!!!)
    
    en el territorio de las BBDD
    (\e[1mBYE BYE DBAs!!!\e[0m)
  EOS

  center <<-EOS
    \e[1mTATFT\e[0m, yes, of course,
    but...

    \e[1m¡ES MÁS DIFÍCIL PETAR!\e[0m
  EOS

  center <<-EOS
    La evolución del "modelo"
    puede dejar al código
    SIN NUEVOS DATOS
    pero...
  EOS

  center <<-EOS
    \e[1m¡NO LO ROMPE!\e[0m
  EOS

  center <<-EOS
    Las migraciones pasan a ser
    readaptación de \e[1mcódigo antiguo
    que nos interesa seguir usando\e[0m
    A.K.A...
  EOS

  center <<-EOS
    código que
    \e[1mEL CLIENTE NOS PIDE/EXIGE\e[0m
    funcione sincronizado
    con los datos
  EOS

  center <<-EOS
    \e[1m¡reciclaje de los tests!\e[0m

    (actualizando las "fixturas")
  EOS

  center <<-EOS
    Please welcome...

    TD\e[1mDM\e[0mD

    test-driven
    Data Model
    development
  EOS

  center <<-EOS
    Intentando expresar las
    ventajas de las
    BBDD de Grafos...
  EOS

  center <<-EOS
    siento algo similar a lo que
    sentía \e[1men 2004\e[0m intentando
    expresar las de \e[1mRails frente
    a cualquier otro framework\e[0m
  EOS

  center <<-EOS
    IMHO su principal virtud es que...
  EOS

  center <<-EOS
    permite que
    \e[1mlos cimientos de la definición\e[0m

    de lo pretendemos resolver sean

    \e[1mlos propios datos\e[0m
  EOS

  center <<-EOS
    pero sin querer ser más que eso...
  EOS

  center <<-EOS
    cimientos
  EOS

  center <<-EOS
    \e[1mRAILS\e[0m era un framework
    que no entraba en

    \e[1mla definición
    de nuestra solución\e[0m
  EOS

  center <<-EOS
    pero \e[1mEL MODELO DE DATOS\e[0m
    es, sí o sí, parte de

    \e[1mla definición
    de nuestra solución\e[0m
  EOS


  center <<-EOS
    los grafos
    \e[1mdestilan su semántica\e[0m

    elimina los datos usados
    para gestionar los datos
    (como las claves foraneas
     o los campos desnormalizados)
  EOS
 

  center <<-EOS
    bueno, suficiente filosofía...
  EOS

  center <<-EOS
    ¡¡¡ A JUGAR !!!
    (o mejor dicho...)

  
    \e[1m¡¡¡ ASCII-ART !!!\e[0m
    (-:= poneos los esquíes =:-)
  EOS

  center <<-EOS
    Código del Ejercicio
    
    en la carpeta

    \e[1mejercicio_ASCII-Art\e[0m
  EOS

  center <<-EOS
    OBJETIVO

    \e[1mcontar un chiste a \e[0mnando\e[1m
    de alguien que no haya trabajado
    en ningún proyecto con él\e[0m
  EOS

  center <<-EOS
    PARA SUBIR NOTA

    \e[1men los que no haya trabajado 
    \e[0mnando\e[1m ni nadie
    que haya trabajado con él\e[0m
  EOS

  center <<-EOS
    y para los empollones que quieran
    subir la nota final \e[1men la asignatura\e[0m
  EOS

  center <<-EOS
    (y que sean de personas que)
    -[hayan asistido a]-> (eventos a los que)
    <-[haya asistido]- (nando)
  EOS

  center <<-EOS
    \e[1mCREAMOS LAS "FIXTURAS"\e[0m
  EOS

  center <<-EOS
    \e[1m1º LOS NODOS\e[0m

    CREATE
      (el_evento:Document
        {title: "EL EVENTO", desc: "al viento"}),
      (el_foso:Document
        {title: "EL FOSO", desc: "con nitroso"}),
      [...],
      (nando:Human {name:"NANDO"}),
      (dani:Human {name: "DANI"}),
      [...],
      (paco:Human {name: "FRANSMARTINS"}),
      (edo:Project {name: "Espacio de Ocio"}),
      [...]
      (rda:Project {name: "Regalo de Ana"},
      [...]
  EOS

  center <<-EOS
    \e[1m2º LAS RELACIONES\e[0m

    (nando)-[:HA_PEDALEADO_EN]->(primeriti),
    (carlos)-[:HA_PEDALEADO_EN]->(edo),
    (isa)-[:HA_PEDALEADO_EN]->(edo),
    (freddy)-[:HA_PEDALEADO_EN]->(rda),
    (pau)-[:HA_PEDALEADO_EN]->(edo),
    [...]  
    (el_foso)-[:VÍA]->(carlos),
    (los_estorninos)-[:VÍA]->(pau)
  EOS

  center <<-EOS
    \e[1mY AHORA A POR LA CONSULTA\e[0m
  EOS

  center <<-EOS
    ¡¡¡NO SOY CAPAZ!!!
    :_(
 
    tengo mucho que aprender
    (¡¡¡BIEN!!! :)
  EOS

  center <<-EOS
    menos mal que ha llegado
    \e[1mStefan Armbruster\e[0m al rescate!!!

    la solución está en la carpeta
    \e[1mejercicio_ASCII-Art\e[0m
    (4_CHISTE_PARA_nando)
  EOS

  center <<-EOS
    y para quienes quieran matrícula...
  EOS

  center <<-EOS
    haya escrito un libro,
    que tenga gato o un amigo con gato,
    algún árbol,
    una PS4 y
    les guste jugar al...
  EOS

  center <<-EOS
    \e[1mSplinter Cell\e[0m
  EOS

  center <<-EOS
    (Codetails
    "deducated"(*) to
    Littlemove;)

    \e[1m¡GRACIAS!\e[0m

    (*) Funny typo keeped :)
  EOS
end
