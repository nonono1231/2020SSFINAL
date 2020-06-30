CREATE TABLE board (
       num int not null auto_increment,
       id varchar(10) not null,
       name varchar(10) not null,
       subject varchar(100) not null,
       content text not null,
       day varchar(50),
       PRIMARY KEY (num)
)default CHARSET=utf8;