use vertabello_sql_basics;
create table if not exists city (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    country_id int not null,
    population int not null,
    area int not null,
    rating int not null,
    foreign key (country_id) references country(id) on delete cascade
);

insert into city (id, name, country_id, population, area, rating)
    values (1, 'Paris', 1, 2243000, 102, 5),
    (2, 'Marseille', 1, 850700, 240, 4),
    (3, 'Lyon', 1, 484300, 48, 4),
    (4, 'Berlin', 2, 3460000, 888, 3),
    (5, 'Hamburg', 2, 1786000, 755, 3),
    (6, 'Munich', 2, 1353000, 310, 4),
    (7, 'Vaduz', 3, 5400, 17, 3),
    (8, 'Madrid', 4, 3165000, 605, 5),
    (9, 'Barcelona', 4, 1620000, 102, 5),
    (10, 'Valencia', 4, 809000, 135, 3),
    (11, 'Rome', 5, 2869000, 1285, 5),
    (12, 'Milan', 5, 1337000, 180, 3);