CREATE TABLE users (
    id          int(255) auto_increment not null,
    name        varchar(100) not null,
    lastname    varchar(100) not null,
    email       varchar(255) not null,
    password    varchar(255) not null,
    date        date not null,
    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDb;

CREATE TABLE categories (
    id      int(255) auto_increment not null,
    name    varchar(100),
    CONSTRAINT pk_categories PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE entries (
    id              int(255) auto_increment not null,
    user_id         int(255) not null,
    category_id     int(255) not null,
    title           varchar(255) not null,
    description     MEDIUMTEXT,
    date            date not null,
    CONSTRAINT pk_entries PRIMARY KEY(id),
    CONSTRAINT fk_entry_user FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT fk_entry_category FOREIGN KEY(category_id) REFERENCES categories(id) ON DELETE CASCADE
)ENGINE=InnoDb;
