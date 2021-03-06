use vertabello_sql_basics;
create table if not exists hiking_trip (
    id int primary key auto_increment not null,
    mountain_id int not null,
    days int not null,
    price int not null,
    length int not null,
    difficulty int not null,
    foreign key (mountain_id) references mountain(id) on delete cascade
);

insert into hiking_trip (id, mountain_id, days, price, length, difficulty)
    values (1, 1, 3, 1000, 30, 3),
    (2, 1, 1, 300, 5, 1),
    (3, 2, 3, 1200, 20, 2),
    (4, 2, 7, 2300, 50, 4),
    (5, 3, 4, 1200, 35, 4),
    (6, 4, 14, 5300, 90, 5),
    (7, 5, 7, 2500, 45, 4),
    (8, 6, 3, 1100, 32, 3),
    (9, 7, 2, 600, 21, 2),
    (10, 8, 2, 600, 23, 3);