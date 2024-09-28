/* 1.- Crear una base de datos llamada películas */

--CREATE DATABASE películas;  se hizo desde DBeaver ver documentación adjunta

/*----------------------------------------------------------------------------*/



/* 2.- Cargar ambos archivos a su tabla correspondiente. */

-- Se hizo por medio de de DBeaver, ver documentación adjunta.

/*-----------------------------------------------------------------------------*/

/* 3.-  Obtener el ID de la película “Titanic”. */

SELECT id from peliculas WHERE "Pelicula" = 'Titanic';


/* Respuesta:
id
 2
*/

/*------------------------------------------------------------------------------*/

/* 4.-  Listar a todos los actores que aparecen en la película "Titanic".  */

SELECT actor from reparto where id_pelicula = 2;

/* Respuesta:

[
  {
    "actor": "Leonardo DiCaprio"
  },
  {
    "actor": "Kate Winslet"
  },
  {
    "actor": "Billy Zane"
  },
  {
    "actor": "Kathy Bates"
  },
  {
    "actor": "Frances Fisher"
  },
  {
    "actor": "Bernard Hill"
  },
  {
    "actor": "Jonathan Hyde"
  },
  {
    "actor": "Danny Nucci"
  },
  {
    "actor": "David Warner"
  },
  {
    "actor": "Bill Paxton"
  },
  {
    "actor": "Gloria Stuart"
  },
  {
    "actor": "Victor Garber"
  },
  {
    "actor": "Suzy Amis"
  }
]

*/

/*------------------------------------------------------------------*/



/* 5.- Consultar en cuántas películas del top 100 participa Harrison Ford */

SELECT COUNT(DISTINCT peliculas.id) AS nro_peliculas
FROM peliculas
JOIN reparto ON peliculas.id = reparto.id_pelicula
WHERE reparto.actor = 'Harrison Ford';

/* Resultado:
nro_peliculas
     8
*/

/*-------------------------------------------------*/


/* 6.- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por titulo de manera ascendente.*/

SELECT "Pelicula", "Año estreno"
FROM peliculas
WHERE "Año estreno" BETWEEN 1990 AND 1999
ORDER BY "Pelicula" ASC;

/* Resultado:

[
  {
    "Pelicula": "American Beauty",
    "Año estreno": 1999
  },
  {
    "Pelicula": "American History X",
    "Año estreno": 1998
  },
  {
    "Pelicula": "Braveheart",
    "Año estreno": 1995
  },
  {
    "Pelicula": "Cadena perpetua",
    "Año estreno": 1994
  },
  {
    "Pelicula": "Eduardo Manostijeras",
    "Año estreno": 1990
  },
  {
    "Pelicula": "El club de la pelea",
    "Año estreno": 1999
  },
  {
    "Pelicula": "El Padrino. Parte III",
    "Año estreno": 1990
  },
  {
    "Pelicula": "El profesional",
    "Año estreno": 1994
  },
  {
    "Pelicula": "El sexto sentido",
    "Año estreno": 1999
  },
  {
    "Pelicula": "El show de Truman",
    "Año estreno": 1998
  },
  {
    "Pelicula": "El silencio de los corderos",
    "Año estreno": 1991
  },
  {
    "Pelicula": "Entrevista con el vampiro",
    "Año estreno": 1994
  },
  {
    "Pelicula": "Forest Gump",
    "Año estreno": 1994
  },
  {
    "Pelicula": "Hombres de negro",
    "Año estreno": 1997
  },
  {
    "Pelicula": "La lista de Schindler",
    "Año estreno": 1993
  },
  {
    "Pelicula": "La milla verde",
    "Año estreno": 1999
  },
  {
    "Pelicula": "Matrix",
    "Año estreno": 1999
  },
  {
    "Pelicula": "Mejor... imposible",
    "Año estreno": 1997
  },
  {
    "Pelicula": "Parque Jurásico",
    "Año estreno": 1993
  },
  {
    "Pelicula": "Pesadilla antes de navidad",
    "Año estreno": 1993
  },
  {
    "Pelicula": "Pulp Fiction",
    "Año estreno": 1994
  },
  {
    "Pelicula": "Salvar al soldado Ryan",
    "Año estreno": 1998
  },
  {
    "Pelicula": "Seven",
    "Año estreno": 1995
  },
  {
    "Pelicula": "Star Wars. Episodio I: La amenaza fantasma",
    "Año estreno": 1999
  },
  {
    "Pelicula": "Terminator 2: el juicio final",
    "Año estreno": 1991
  },
  {
    "Pelicula": "Titanic",
    "Año estreno": 1997
  },
  {
    "Pelicula": "Toy Story",
    "Año estreno": 1995
  },
  {
    "Pelicula": "Toy Story 2",
    "Año estreno": 1999
  },
  {
    "Pelicula": "Trainspotting",
    "Año estreno": 1996
  },
  {
    "Pelicula": "Uno de los nuestros",
    "Año estreno": 1990
  }
]

*/
/*----------------------------------------------------------*/



/* 7.- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”. */

SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo
FROM peliculas
ORDER BY longitud_titulo DESC, "Pelicula";

/* Resultado:

[
  {
    "Pelicula": "Sweeney Todd: El barbero diabólico de la calle Fleet",
    "longitud_titulo": 52
  },
  {
    "Pelicula": "Piratas del Caribe: La maldición de la Perla Negra",
    "longitud_titulo": 50
  },
  {
    "Pelicula": "El Señor de los anillos: La comunidad del anillo",
    "longitud_titulo": 48
  },
  {
    "Pelicula": "Star Wars. Episodio III: La venganza de los Sith",
    "longitud_titulo": 48
  },
  {
    "Pelicula": "Piratas del Caribe: El cofre del hombre muerto",
    "longitud_titulo": 46
  },
  {
    "Pelicula": "Star Wars. Episodio V: El imperio contraataca",
    "longitud_titulo": 45
  },
  {
    "Pelicula": "El Señor de los anillos: El retorno del rey",
    "longitud_titulo": 43
  },
  {
    "Pelicula": "Star Wars. Episodio IV: Una nueva esperanza",
    "longitud_titulo": 43
  },
  {
    "Pelicula": "Star Wars. Episodio VI: El retorno del Jedi",
    "longitud_titulo": 43
  },
  {
    "Pelicula": "Star Wars. Episodio I: La amenaza fantasma",
    "longitud_titulo": 42
  },
  {
    "Pelicula": "El Señor de los anillos: Las dos torres",
    "longitud_titulo": 39
  },
  {
    "Pelicula": "Harry Potter y el Prisionero de Azkaban",
    "longitud_titulo": 39
  },
  {
    "Pelicula": "Alguien voló sobre el nido del cuco",
    "longitud_titulo": 35
  },
  {
    "Pelicula": "Blancanieves y los siete enanitos",
    "longitud_titulo": 33
  },
  {
    "Pelicula": "Indiana Jones y el templo maldito",
    "longitud_titulo": 33
  },
  {
    "Pelicula": "Indiana Jones y la última cruzada",
    "longitud_titulo": 33
  },
  {
    "Pelicula": "Terminator 2: el juicio final",
    "longitud_titulo": 29
  },
  {
    "Pelicula": "El silencio de los corderos",
    "longitud_titulo": 27
  },
  {
    "Pelicula": "Pesadilla antes de navidad",
    "longitud_titulo": 26
  },
  {
    "Pelicula": "El bueno el feo y el malo",
    "longitud_titulo": 25
  },
  {
    "Pelicula": "En busca del arca perdida",
    "longitud_titulo": 25
  },
  {
    "Pelicula": "Entrevista con el vampiro",
    "longitud_titulo": 25
  },
  {
    "Pelicula": "Lo que el viento se llevó",
    "longitud_titulo": 25
  },
  {
    "Pelicula": "El planeta de los simios",
    "longitud_titulo": 24
  },
  {
    "Pelicula": "El Laberinto del Fauno",
    "longitud_titulo": 22
  },
  {
    "Pelicula": "Salvar al soldado Ryan",
    "longitud_titulo": 22
  },
  {
    "Pelicula": "El Padrino. Parte III",
    "longitud_titulo": 21
  },
  {
    "Pelicula": "La lista de Schindler",
    "longitud_titulo": 21
  },
  {
    "Pelicula": "Eduardo Manostijeras",
    "longitud_titulo": 20
  },
  {
    "Pelicula": "El libro de la selva",
    "longitud_titulo": 20
  },
  {
    "Pelicula": "El Padrino. Parte II",
    "longitud_titulo": 20
  },
  {
    "Pelicula": "Regreso al futuro II",
    "longitud_titulo": 20
  },
  {
    "Pelicula": "El caballero oscuro",
    "longitud_titulo": 19
  },
  {
    "Pelicula": "El club de la pelea",
    "longitud_titulo": 19
  },
  {
    "Pelicula": "El precio del poder",
    "longitud_titulo": 19
  },
  {
    "Pelicula": "El viaje de Chihiro",
    "longitud_titulo": 19
  },
  {
    "Pelicula": "Uno de los nuestros",
    "longitud_titulo": 19
  },
  {
    "Pelicula": "American History X",
    "longitud_titulo": 18
  },
  {
    "Pelicula": "Mejor... imposible",
    "longitud_titulo": 18
  },
  {
    "Pelicula": "El show de Truman",
    "longitud_titulo": 17
  },
  {
    "Pelicula": "Full Metal Jacket",
    "longitud_titulo": 17
  },
  {
    "Pelicula": "Los cazafantasmas",
    "longitud_titulo": 17
  },
  {
    "Pelicula": "Regreso al futuro",
    "longitud_titulo": 17
  },
  {
    "Pelicula": "El sexto sentido",
    "longitud_titulo": 16
  },
  {
    "Pelicula": "Hombres de negro",
    "longitud_titulo": 16
  },
  {
    "Pelicula": "Kill Bill Vol. 1",
    "longitud_titulo": 16
  },
  {
    "Pelicula": "Kill Bill Vol. 2",
    "longitud_titulo": 16
  },
  {
    "Pelicula": "La vida de Brian",
    "longitud_titulo": 16
  },
  {
    "Pelicula": "American Beauty",
    "longitud_titulo": 15
  },
  {
    "Pelicula": "Buscando a Nemo",
    "longitud_titulo": 15
  },
  {
    "Pelicula": "Cadena perpetua",
    "longitud_titulo": 15
  },
  {
    "Pelicula": "Escuela de Rock",
    "longitud_titulo": 15
  },
  {
    "Pelicula": "Parque Jurásico",
    "longitud_titulo": 15
  },
  {
    "Pelicula": "Apocalypse Now",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "El profesional",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "La milla verde",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "Los increíbles",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "Monstruos S.A.",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "Ocean's Eleven",
    "longitud_titulo": 14
  },
  {
    "Pelicula": "Batman Begins",
    "longitud_titulo": 13
  },
  {
    "Pelicula": "El resplandor",
    "longitud_titulo": 13
  },
  {
    "Pelicula": "Mouling Rouge",
    "longitud_titulo": 13
  },
  {
    "Pelicula": "Trainspotting",
    "longitud_titulo": 13
  },
  {
    "Pelicula": "V de Vendetta",
    "longitud_titulo": 13
  },
  {
    "Pelicula": "Blade Runner",
    "longitud_titulo": 12
  },
  {
    "Pelicula": "El exorcista",
    "longitud_titulo": 12
  },
  {
    "Pelicula": "Pulp Fiction",
    "longitud_titulo": 12
  },
  {
    "Pelicula": "Spider-Man 2",
    "longitud_titulo": 12
  },
  {
    "Pelicula": "Transformers",
    "longitud_titulo": 12
  },
  {
    "Pelicula": "Forest Gump",
    "longitud_titulo": 11
  },
  {
    "Pelicula": "Infiltrados",
    "longitud_titulo": 11
  },
  {
    "Pelicula": "Ratatouille",
    "longitud_titulo": 11
  },
  {
    "Pelicula": "Toy Story 2",
    "longitud_titulo": 11
  },
  {
    "Pelicula": "axi driver",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "Braveheart",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "Casablanca",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "El Padrino",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "Spider-Man",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "Terminator",
    "longitud_titulo": 10
  },
  {
    "Pelicula": "Gladiator",
    "longitud_titulo": 9
  },
  {
    "Pelicula": "King Kong",
    "longitud_titulo": 9
  },
  {
    "Pelicula": "Toy Story",
    "longitud_titulo": 9
  },
  {
    "Pelicula": "Iron Man",
    "longitud_titulo": 8
  },
  {
    "Pelicula": "Predator",
    "longitud_titulo": 8
  },
  {
    "Pelicula": "Psicosis",
    "longitud_titulo": 8
  },
  {
    "Pelicula": "Ben-Hur",
    "longitud_titulo": 7
  },
  {
    "Pelicula": "Tiburón",
    "longitud_titulo": 7
  },
  {
    "Pelicula": "Titanic",
    "longitud_titulo": 7
  },
  {
    "Pelicula": "X-Men 2",
    "longitud_titulo": 7
  },
  {
    "Pelicula": "Amélie",
    "longitud_titulo": 6
  },
  {
    "Pelicula": "Grease",
    "longitud_titulo": 6
  },
  {
    "Pelicula": "Matrix",
    "longitud_titulo": 6
  },
  {
    "Pelicula": "Wall-E",
    "longitud_titulo": 6
  },
  {
    "Pelicula": "Alien",
    "longitud_titulo": 5
  },
  {
    "Pelicula": "Rambo",
    "longitud_titulo": 5
  },
  {
    "Pelicula": "Rocky",
    "longitud_titulo": 5
  },
  {
    "Pelicula": "Seven",
    "longitud_titulo": 5
  },
  {
    "Pelicula": "300",
    "longitud_titulo": 3
  },
  {
    "Pelicula": "E.T",
    "longitud_titulo": 3
  },
  {
    "Pelicula": "Saw",
    "longitud_titulo": 3
  }
]
*/
/*--------------------------------------------------------------------------*/




/* 8.- Consultar cual es la longitud más grande entre todos los títulos de las películas. */

SELECT MAX(LENGTH("Pelicula")) AS longitud_maxima
FROM peliculas;

/* Resultado:

[
  {
    "longitud_maxima": 52
  }
]

*/