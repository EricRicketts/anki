use vertabello_join_table_with_itself;
create table if exists dictionary(
    entry_id int primary_key auto_increment not null,
    word varchar(100) not null,
    hypernym_id int
);

insert into dictionary(id, word, hypernym_id)
values (1, 'bear', 2),
       (2, 'carnivore', 16),
	(3, 'color', null),
	(4, 'red', 3),
    (5, 'blue', 3),
    (6, 'yellow', 3),
    (7, 'gemstone', null),
    (8, 'diamond', 7),
    (9, 'ruby', 7),
    (10, 'emerald', 7),
    (11, 'bird', 16),
    (12, 'pelican', 11),
    (13, 'sparrow', 11),
    (14, 'cyan', 5),
    (15, 'marine', 5),
    (16, 'animal', null),
    (17, 'fish', 16),
    (18, 'salmon', 17),
    (19, 'trout', 18);