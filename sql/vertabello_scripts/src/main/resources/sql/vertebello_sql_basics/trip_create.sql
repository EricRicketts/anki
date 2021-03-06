use vertabello_sql_basics;
create table if not exists trip (
    id int primary key auto_increment not null,
    city_id int not null,
    days int not null,
    price int not null,
    foreign key (city_id) references city(id) on delete cascade
);

insert into trip (id, city_id, days, price)
    values (1, 1, 3, 1200),
    (2, 1, 7, 2000),
    (3, 2, 7, 1800),
    (4, 2, 14, 3800),
    (5, 3, 5, 1400),
    (6, 4, 5, 1750),
    (7, 5, 1, 300),
    (8, 6, 3, 950),
    (9, 6, 10, 2900),
    (10, 7, 5, 1350),
    (11, 8, 5, 1650),
    (12, 9, 7, 1700),
    (13, 10, 11, 3100),
    (14, 11, 14, 3450),
    (15, 12, 21, 5100);