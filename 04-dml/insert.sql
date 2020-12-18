#INSERTAR NUEVOS REGISTROS#

INSERT INTO users VALUES (
null,
'javier',
'jaramillo',
'test@test.com',
'12345',
'2019-04-01');

INSERT INTO users VALUES (
null,
'jose',
'araseli',
'test1@test2.com',
'12345',
'2018-04-01');

INSERT INTO users VALUES (
null,
'armando',
'castillo',
'test3@test3.com',
'12345',
'2017-04-01');


#INSERT VALUES ONLY IN ONE COLUMN#

INSERT INTO users(name, email) VALUES('Camilo', 'Campos@campos.com')
