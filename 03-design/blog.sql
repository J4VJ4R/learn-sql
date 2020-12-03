CREATE TABLE users (
    id          int(255) auto_increment not null,
    name        varchar (100) not null,
    lastname    varchar (100) not null,
    email       varchar (255) not null,
    password    varchar (255) not null,
    date        date not null,
    CONSTRAINT pk_usuarios PRIMARY KEY (id)
);

CREATE TABLE categories (
    id      int(255) auto_increment not null,
    name    varchar (100),
    CONSTRAINT pk_categories PRIMARY KEY(id)
);

CREATE TABLE entries (
    id              int(255) auto_increment not null,
    user_id         int(255),
    category_id     int(255),
    title           varchar(255)
    description     MEDIUMTEXT,
    date            date not null
);