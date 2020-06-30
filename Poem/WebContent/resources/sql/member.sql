create table member ( 
    id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    gender varchar(4),
    birth  varchar(10),
    phone varchar(20),
    primary key(id) 
) default CHARSET=utf8;
