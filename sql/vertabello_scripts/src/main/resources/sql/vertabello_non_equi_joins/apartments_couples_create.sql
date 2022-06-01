use vertabello_non_equi_joins;
create table if not exists apartments (
    id int primary key auto_increment not null,
    location varchar(100) not null,
    price int not null,
    rating int not null
);

insert into apartments(id, location, price, rating)
    values (1, 'Chicago', 300000, 3),
    (2, 'Charleston', 400000, 4),
    (3, 'Chicago', 200000, 3),
    (4, 'Las Vegas', 250000, 3),
    (5, 'Las Vegas', 150000, 4),
    (6, 'Seattle', 100000, 4),
    (7, 'Seattle', 140000, 3),
    (8, 'San Francisco', 260000, 3),
    (9, 'San Francisco', 280000, 4),
    (10, 'San Francisco', 350000, 5);

create table if not exists couples (
    id int primary key auto_increment not null,
    couple_name varchar(255) not null,
    min_price int not null,
    max_price int not null,
    pref_location varchar(100) not null
);

insert into couples(id, couple_name, min_price, max_price, pref_location)
    values (1, 'Mark and Jess', 120000, 180000, 'Charleston'),
    (2, 'Jenny and Pawel', 130000, 220000, 'Chicago'),
    (3, 'Peter and Jenny', 210000, 500000, 'Las Vegas'),
    (4, 'Jessica and Pawel', 220000, 280000, 'Las Vegas'),
    (5, 'John and Maria', 110000, 190000, 'Seattle'),
    (6, 'Maria and Sam', 150000, 210000, 'Seattle'),
    (7, 'Samantha and Theo', 220000, 250000, 'San Francisco'),
    (8, 'Mark and Jenny', 110000, 120000, 'San Francisco'),
    (9, 'August and Marta', 150000, 170000, 'Chicago'),
    (10, 'Isabelle and Mathew', 270000, 360000, 'Chicago'),
    (11, 'Jacob and Alice', 280000, 350000, 'San Francisco'),
    (12, 'Alice and John', 290000, 640000, 'San Francisco');
