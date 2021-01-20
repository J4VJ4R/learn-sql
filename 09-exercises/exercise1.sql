#1. Desigh and create a database of concessionaire#

CREATE TABLE cars(
    id      int(10) auto_increment not null,
    model   varchar(100) not null,
    brand   varchar(100),
    price   int(20) not null,
    stock   int(255) not null,
    CONSTRAINT pk_cars PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE groups(
    id          int(20) auto_increment not null,
    group_name  varchar(100) not null,
    ciudad      varchar (100) not null,
    CONSTRAINT pk_groups PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE sellers(
    id                  int (20) auto_increment not null,
    group_id            int (20) not null,
    name                varchar(100) not null,
    lastname            varchar (100) not null,
    position            varchar (100) not null,
    start_date          date,
    salary              int (20,2),
    sales_comission     float(10,2),
    manager             int (10),
    CONSTRAINT pk_sellers PRIMARY KEY (id),
    CONSTRAINT fk_seller_group FOREIGN KEY (group_id) REFERENCES groups(id),
    CONSTRAINT fk_seller_manager FOREIGN KEY (manager) REFERENCES sellers(id)
)ENGINE=InnoDB;



