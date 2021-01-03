#CONSULTAS DE AGRUPAMIENTO#

SELECT description, COUNT(description) AS 'QUANTITY', category_id FROM entries GROUP BY category_id;

#consutas DE AGRUPAMIENTO CON CONDICIONES#

SELECT COUNT(title) as 'NUMERO DE ENTRADAS', category_id
FROM entries GROUP BY category_id HAVING COUNT(title) >= 2;
