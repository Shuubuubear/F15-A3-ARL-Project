# Change the followin oracle account id and password to your oracle account id and password. Also, change A0 to your group's number but don't use F15 because it will make some internal names be too long.
conn = connectTo 'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl' 'C##cs347_sh36553' 'orcl_sh36553' 'rdf_mode' 'A3';

Neo4j on conn "CREATE (:frame { FRAMENO : 1, ANINO : 1, filename : 'j1.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 2, ANINO : 1, filename : 'j2.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 3, ANINO : 1, filename : 'j3.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 4, ANINO : 1, filename : 'j4.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 5, ANINO : 1, filename : 'j5.png'})"

Neo4j on conn "CREATE (:frame { FRAMENO : 1, ANINO : 2, filename : 'spin1.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 2, ANINO : 2, filename : 'spin2.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 3, ANINO : 2, filename : 'spin3.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 4, ANINO : 2, filename : 'spin4.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 5, ANINO : 2, filename : 'spin5.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 6, ANINO : 2, filename : 'spin6.png'})"

Neo4j on conn "CREATE (:frame { FRAMENO : 1, ANINO : 3, filename : 'hi1.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 2, ANINO : 3, filename : 'hi2.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 3, ANINO : 3, filename : 'hi3.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 4, ANINO : 3, filename : 'hi4.png'})"


Neo4j on conn "CREATE (:frame { FRAMENO : 1, ANINO : 4, filename : 'walk1.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 2, ANINO : 4, filename : 'walk2.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 3, ANINO : 4, filename : 'walk3.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 4, ANINO : 4, filename : 'walk4.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 5, ANINO : 4, filename : 'walk5.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 6, ANINO : 4, filename : 'walk6.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 7, ANINO : 4, filename : 'walk7.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 8, ANINO : 4, filename : 'walk8.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 9, ANINO : 4, filename : 'walk9.png'})"
Neo4j on conn "CREATE (:frame { FRAMENO : 10, ANINO : 4, filename : 'walk10.png'})"

Neo4j on conn "CREATE (:animation { ANINO : 1, ANINAME : 'jump'})"
Neo4j on conn "CREATE (:animation { ANINO : 2, ANINAME : 'spin'})"
Neo4j on conn "CREATE (:animation { ANINO : 3, ANINAME : 'hi'})"
Neo4j on conn "CREATE (:animation { ANINO : 4, ANINAME : 'walk'})"

Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 1 AND b.anino = 1 CREATE (a)<-[:frames]-(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 1 AND b.anino = 1 CREATE (b)-[:fullanimation]->(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 2 AND b.anino = 2 CREATE (a)<-[:frames]-(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 2 AND b.anino = 2 CREATE (b)-[:fullanimation]->(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 3 AND b.anino = 3 CREATE (a)<-[:frames]-(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 3 AND b.anino = 3 CREATE (b)-[:fullanimation]->(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 4 AND b.anino = 4 CREATE (a)<-[:frames]-(b)"
Neo4j on conn "MATCH (a:frame),(b:animation) WHERE a.anino = 4 AND b.anino = 4 CREATE (b)-[:fullanimation]->(b)"
