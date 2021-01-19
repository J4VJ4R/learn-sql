/*
CONSULTA MULTITABLA SE REFIERE A UNA CONSULTA EN VARIAS TABLAS EN UNA SOLA SENTENCIAS
 */

 #Mostrar las entradas con el nombre del usuario, autor y categoría#
 SELECT e.id, e.title, u.name AS 'AUTOR', c.name AS 'CATEGORY'
    FROM entries e, users u, categories c
    WHERE e.user_id = u.id AND e.category_id = c.id;

#Mostrar el nombre de las categorias y al lado cuantas entradas tienen#

SELECT c.name, COUNT(e.id) FROM categories c, entries e WHERE e.category_id = c.id GROUP BY e.category_id;

#MOSTRAR EL EMAIL DEL USUARIO Y AL LADO LA CANTIDAD DE ENTRADAS#

SELECT u.email, COUNT(e.id) FROM users u, entries e WHERE e.user_id = u.id GROUP BY u.id;

#INNER JOIN#

SELECT e.id, e.title, u.name AS 'AUTOR', c.name AS 'CATEGORY'
FROM entries e
INNER JOIN users u ON e.user_id = u.id
INNER JOIN categories c ON e.category_id = c.id;

#NOMBRE DE LAS CATEGORIAS Y AL LADO CUANTAS ENTRADAS TIENEN#

SELECT c.name, COUNT(e.id) AS 'NUMBER OF ENTRIES' FROM categories c, entries e WHERE e.category_id = c.id GROUP BY category_id;

#NOW WITH INNER JOIN#
SELECT c.name, COUNT(e.id) AS 'NUMBER OF ENTRIES'
FROM categories c
INNER JOIN entries e ON e.category_id = c.id
GROUP BY category_id;

#NOW WITH RIGHT JOIN#
SELECT c.name, COUNT(e.id) AS 'NUMBER OF ENTRIES'
FROM entries e
RIGHT JOIN categories c ON e.category_id = c.id
GROUP BY e.category_id;

