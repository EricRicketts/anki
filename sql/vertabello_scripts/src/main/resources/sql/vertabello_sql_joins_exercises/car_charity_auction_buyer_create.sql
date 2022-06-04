use vertabello_sql_joins_exercises;
create table if not exists car (
    id int primary key auto_increment not null,
    model varchar(100) not null,
    brand varchar(100) not null,
    original_price int not null,
    mileage int not null,
    prod_year int not null
);

create table if not exists buyer (
    id int primary key auto_increment not null,
    funds int not null
);

create table if not exists charity_auction (
    car_id int not null,
    initial_price int not null,
    final_price int,
    buyer_id int,
    foreign key (car_id) references car(id) on delete cascade,
    foreign key (buyer_id) references buyer(id)
);

insert into car(id, model, brand, original_price, mileage, prod_year)
values (1, 'Speedster', 'Teiko', 80000, 150000, 1999),
    (2, 'Roadmaster', 'Teiko', 110000, 30000, 1980),
    (3, 'Sundry', 'Teiko', 40000, 25000, 1991),
    (4, 'Furu', 'Domus', 50000, 10000, 2002),
    (5, 'Emperor', 'Domus', 65000, 140000, 2005),
    (6, 'King', 'Domus', 200000, 6000, 1981),
    (7, 'Empress', 'Domus', 60000, 7600, 1997),
    (8, 'Fury', 'Tatsu', 150000, 13000, 1993);

insert into buyer(id, funds)
values (1, 80000),
       (2, 95000),
       (3, 60000),
       (4, 500000),
       (5, 120000);

insert into charity_auction(car_id, initial_price, final_price, buyer_id)
values (1, 65000, null, null),
    (3, 35000, 50000, 1),
    (5, 50000, 120000, 3),
    (6, 350000, 410000, 4),
    (7, 65000, null, null);
