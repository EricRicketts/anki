use vertabello_sql_basics;
create table if not exists mountain (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    height int not null,
    country_id int not null,
    foreign key (country_id) references country(id) on delete cascade
);

insert into mountain (id, name, height, country_id)
    values (1, 'Mont Blanc', 4808, 1),
    (2, 'Barre des Ecrins', 4100, 1),
    (3, 'Zugspitze', 2962, 2),
    (4, 'Schneefernerkopf', 2874, 2),
    (5, 'Naafkopf', 2570, 3),
    (6, 'Mulhacen', 3478, 4),
    (7, 'Corno Grande', 2912, 5),
    (8, 'Monte Amaro', 2793, 5);