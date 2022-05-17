use vertabello_multiple_joins;
create table if not exists producer(
    id int primary key auto_increment not null,
    name varchar(100) not null
);

insert into producer(id, name)
    values (1, 'GoodFoods'),
    (2, 'HealthyFood Inc.'),
    (3, 'SupremeFoods'),
    (4, 'Foodie'),
    (5, 'Gusto'),
    (6, 'Baker n Sons'),
    (7, 'Tasty n Healthy');