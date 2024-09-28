# Proyecto de Base de Datos de Películas - Desafío 3 - Módulo 5

## Descripción

Este proyecto consiste en crear una plataforma web dedicada al mundo del cine, permitiendo a los usuarios buscar detalles sobre las 100 películas más populares. La característica clave de este sitio web es la variedad de filtros que ofrece para una búsqueda más efectiva.

## Configuración de la Base de Datos

1. Crear una base de datos llamada "películas".
2. Cargar datos de dos archivos CSV en sus tablas correspondientes: "películas" y "reparto".

## Requisitos del Proyecto

1. Crear una base de datos llamada "películas".
2. Cargar ambos archivos CSV en sus tablas correspondientes.
3. Obtener el ID de la película "Titanic".
4. Listar a todos los actores que aparecen en la película "Titanic".
5. Consultar en cuántas películas del top 100 participa Harrison Ford.
6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrada para la consulta como "longitud_titulo".
8. Consultar cuál es la longitud más grande entre todos los títulos de las películas.

## Consultas SQL

Aquí están las consultas SQL utilizadas para cumplir con los requisitos del proyecto:

```sql
-- 3. Obtener el ID de la película "Titanic"
SELECT id FROM peliculas WHERE "Pelicula" = 'Titanic';

-- 4. Listar a todos los actores que aparecen en la película "Titanic"
SELECT actor FROM reparto WHERE id_pelicula = 2;

-- 5. Consultar en cuántas películas del top 100 participa Harrison Ford
SELECT COUNT(DISTINCT peliculas.id) AS nro_peliculas
FROM peliculas
JOIN reparto ON peliculas.id = reparto.id_pelicula
WHERE reparto.actor = 'Harrison Ford';

-- 6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente
SELECT "Pelicula", "Año estreno"
FROM peliculas
WHERE "Año estreno" BETWEEN 1990 AND 1999
ORDER BY "Pelicula" ASC;

-- 7. Hacer una consulta SQL que muestre los títulos con su longitud
SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo
FROM peliculas
ORDER BY longitud_titulo DESC, "Pelicula";

-- 8. Consultar cuál es la longitud más grande entre todos los títulos de las películas
SELECT MAX(LENGTH("Pelicula")) AS longitud_maxima
FROM peliculas;
```

## Herramientas Utilizadas

- Base de Datos: PostgreSQL
- Herramienta de Gestión de Base de Datos: DBeaver

## Notas

- La base de datos y las tablas fueron creadas utilizando DBeaver. Consulte la documentación adjunta para más detalles.
- Los datos se cargaron en las tablas utilizando la funcionalidad de importación de DBeaver.

## Mejoras Futuras

- Implementar una interfaz web para la interacción del usuario
- Añadir opciones de filtrado más avanzadas
- Integrar con APIs externas para obtener datos adicionales de películas

## Licencia

Este proyecto es de código abierto y está disponible bajo la [Licencia MIT](https://opensource.org/licenses/MIT).

## Autor

[Francisco Colomer Bonometti](https://github.com/Cy5k0)
