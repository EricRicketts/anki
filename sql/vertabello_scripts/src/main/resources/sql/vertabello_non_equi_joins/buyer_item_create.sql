use vertabello_non_equi_joins;
create table if not exists buyer (
    id int primary key auto_increment not null,
    name varchar(255) not null,
    funds int not null
);

insert into buyer(id, name, funds)
    values (1, 'Mark Gatis', 15000),
    (2, 'Michal Bar', 21000),
    (3, 'Harvey Trust', 5000),
    (4, 'John Martin', 7500),
    (5, 'Marin Gant', 95000);

create table if not exists item (
    id int primary key auto_increment not null,
    name varchar(255) not null,
    price int not null,
    type varchar(100) not null
);

insert into item(id, name, price, type)
    values (1, 'Upon the Sky', 6000, 'book'),
    (2, 'Starless', 15000, 'painting'),
    (3, 'Glimmering Hope', 11000, 'painting'),
    (4, 'Seconds of Hope', 3000, 'sculpture'),
    (5, 'Unexpexted Gift', 9000, 'sculpture'),
    (6, 'The Thinker', 7000, 'sculpture'),
    (7, 'White Soul', 85000, 'book'),
    (8, 'Forgiveness', 12500, 'book'),
    (9, 'Acceptance', 21000, 'painting'),
    (10, 'Blue Teapot', 50000, 'dinnerware');
