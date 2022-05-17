create table if not exists food_department (
    id int not null auto_increment primary key,
    name varchar(255) not null
);

insert into food_department (id, name)
values (1, 'fruits'),
    (2, 'vegetables'),
    (3,	'seafood'),
    (4,	'deli'),
    (5,	'bakery'),
    (6,	'meat'),
    (7,	'dairy');