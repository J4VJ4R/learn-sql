#CONSULTAS DE AGRUPAMIENTO#

SELECT description, COUNT(description) AS 'QUANTITY', category_id FROM entries GROUP BY category_id;

#consutas DE AGRUPAMIENTO CON CONDICIONES#

SELECT COUNT(title) as 'NUMERO DE ENTRADAS', category_id
FROM entries GROUP BY category_id HAVING COUNT(title) >= 2;

/*
    AVG => SACAR LA MEDIA
    COUNT => CONTAR NÚMERO DE ELEMENTOS
    MAX => VALOR MÁXIMO DEL GRUPO
    MIN => VALOR MÍNIMO DEL GRUPO
    SUM => SUMAR TODAS LAS EXPRESIONES DEL GRUPO O EL CONTENIDO
 */

 SELECT AVG(id) AS 'MEDIA DE ENTRADAS' FROM entries;

 SELECT MAX(id) AS 'MAX OF ENTRIES' FROM entries;

 SELECT SUM(id) AS 'MAX OF ENTRIES' FROM entries;
