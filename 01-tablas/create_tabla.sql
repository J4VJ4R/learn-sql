CREATE TABLE usuarios (
id          int(11) auto_increment not null,
name        varchar (100) not null,
lastname    varchar (255) default 'hi how are you',
email       varchar (100) not null,
password    varchar (255),
CONSTRAINT pk_usuarios PRIMARY KEY(id)
)