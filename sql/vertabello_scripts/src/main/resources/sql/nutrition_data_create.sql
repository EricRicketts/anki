use vertabello_multiple_joins;
create table if not exists nutrition_data (
    product_id int,
    calories int not null,
    fat decimal(3, 1) not null,
    carbohydrate decimal(3, 1),
    protein decimal(3, 1) not null,
    foreign key (product_id) references product(id) on delete cascade
);

insert into nutrition_data(product_id, calories, fat, carbohydrate, protein)
    values (1, 130, 0, 5, 1),
    (2, 50, 4.5, 3, 1),
    (3, 110, 0, 30, 1),
    (4, 60, 0, 15, 1),
    (null, 90, 0, 23, 0),
    (6, 90, 1, 20, 1),
    (7, 15, 0, 5, 0),
    (8, 60, 0.5, 15, 1),
    (9, 100, 0, 26, 1),
    (10, 50, 0, 13, 1),
    (11, 70, 0,	19, 1),
    (12, 20, 0,	4, 2),
    (13, 46, 0.5, 8, 4),
    (14, 30, 0, 7, 1),
    (15, 25, 0, 5, 2),
    (16, 15, 0, 4, 0),
    (17, 10, 0, 2, 1),
    (18, 45, 0, 9, 1),
    (19, 110, 0, 17, 3),
    (20, 25, 0, 5, 1),
    (21, 90, 1, 0, 18),
    (22, 169, 7, 0, 24),
    (23, 140, 5, 0, 25),
    (24, 100, 3, 0, 20),
    (25, 140, 1, 0, 28),
    (26, 106, 9, 0, 6),
    (27, 114, 9.4, 0, 7),
    (28, 72, 4.5, 1, 7),
    (29, 22, 1.4, 0, 2),
    (30, 150, 7, 18, 3.5),
    (31, 75, 1, 13.5, 2.5),
    (32, 140, 4.5, 20.5, 5),
    (33, 245, 1.5, 48, 10),
    (34, 105, 1.5, 19.1, 3.3),
    (null, 160, 3, null, 30),
    (36, 132, 4, 0, 21),
    (37, 213, 14, 14, 8),
    (38, 209, 16, 5, 11),
    (39, 80, 0, 12, 8),
    (40, 150, 8, 12, 8),
    (41, 130, 0, 10, 23),
    (42, 110, 6, 8, 6);