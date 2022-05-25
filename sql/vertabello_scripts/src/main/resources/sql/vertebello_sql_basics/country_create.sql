use vertabello_sql_basics;
create table if not exists country (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    population int not null,
    area int not null
);

insert into country (id, name, population, area)
    values (1, 'France', 66600000, 640680),
    (2, 'Germany', 80700000, 357000),
    (3, 'Liechtenstein', 37340, 160),
    (4, 'Spain', 46464000, 505990),
    (5, 'Italy', 60795000, 301300);