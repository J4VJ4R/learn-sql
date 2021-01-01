
#work with where#

SELECT FROM users WHERE email = 'test@test.com';

#show name and lastnane where their date is 2019#

SELECT name, lastname FROM users WHERE YEAR(date) = '2019';

#show name and lastnane where their date is 2019#

SELECT name, lastname FROM users WHERE YEAR(date) != 2019;

#mostrar el email de los usuarios que contengan la letra a y que el pasword sea igual a 12345

SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND passwrod = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND passwrod = 12345;
SELECT email FROM users WHERE lastname LIKE '%a%' AND password = 12345;

# sacar todos los registros de la tabla users cuyo año sea par

SELECT * FROM users WHERE (YEAR(DATE) % 2 = 0);

# sacar todos los registros de la tabla usuarios cuyo nombre tenga más de 5 letras
# y que se hayan registrado antes del año 2020 y mostrar el nombre en mayusculas

SELECT UPPER(name), lastname FROM users WHERE LENGTH(name) > 5 AND YEAR(date) < 2020;
