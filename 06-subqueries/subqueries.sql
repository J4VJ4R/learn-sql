/*
Subconsultas:

- son consultas que se ejecutan dentro de otras
- Consiste en utilizar los resultados de la subconsulta para operar en la consulta
- principal
- Jugando con las foreing keys
 */

#SACAR USUARIOS CON ENTRADAS#

 SELECT * FROM users WHERE id IN (SELECT user_id FROM entries);

#SACAR USUARIOS SIN ENTRADAS#

SELECT * FROM entries WHERE id IN (SELECT user_id FROM entries);

#sacar usuarios que en suu titulo tengan el número 1#

SELECT name, lastname FROM users WHERE id IN (SELECT user_id FROM entries WHERE title LIKE '%GTA%');

#sacar todas las entradas de la categoría acción utilizando su nombre#

SELECT * FROM entries WHERE category_id IN (SELECT id FROM categories WHERE name = 'Pablo');

#mostrar las categorias con 3 o mas entradas#

SELECT * FROM categories WHERE id IN (SELECT category_id FROM entries GROUP BY category_id HAVING COUNT(category_id)>=3);


#Mostrar los usuarios que crearon una entrada un martes#

SELECT * FROM users WHERE id IN (SELECT user_id FROM entries WHERE DAYOFWEEK(date)=3);


#mostrar el nombre del usuario que tenga más entradas#

SELECT CONCAT(name, ' ', lastname) AS 'USERS WITH MORE ENTRIES' FROM users WHERE id = (SELECT user_id FROM entries
    GROUP BY user_id ORDER BY COUNT(id) DESC LIMIT 1);

#mostrar las categorias sin description#






