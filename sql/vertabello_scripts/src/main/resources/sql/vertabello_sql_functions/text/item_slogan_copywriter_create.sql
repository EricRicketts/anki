use vertabello_sql_functions_text;
create table if not exists item (
    id int primary key auto_increment,
    name varchar(100) not null,
    type varchar(100) not null
);

create table if not exists copywriter (
    id int primary key auto_increment,
    first_name varchar(100) not null,
    last_name varchar(100) not null
);

create table if not exists slogan (
    id int primary key auto_increment,
    item_id int not null,
    type varchar(100) not null,
    text text not null,
    copywriter_id int not null,
    foreign key (item_id) references item(id) on delete cascade on update cascade,
    foreign key (copywriter_id) references copywriter(id) on delete cascade on update cascade
);

insert into item (id, name, type)
values (1, 'WashPow(d)er', 'washing powder'),
    (2, 'riVer Flow', 'non-alcoholic cocktail'),
    (3, 'Vacum2000', 'vacuum cleaner'),
    (4, 'TripCare', 'bagpack');

insert into copywriter (id, first_name, last_name)
values (1, 'Olivier', 'Norris'),
    (2, 'Anne', 'Sharp'),
    (3, 'Kate', 'Gordon'),
    (4, 'Penelope', 'Stone'),
    (5, 'Mark', 'Ratliff'),
    (6, 'Alexander', 'Turner'),
    (7, 'Angela', 'Bowen'),
    (8, 'Particia', 'Lawrence');

insert into slogan (id, item_id, type, text, copywriter_id)
values (1, 1, 'tv commercial', 'Feel the difference. Feel the powder.', 3),
    (2, 2, 'tv commercial', 'Get enthiusiastic - even without alcohol.', 6),
    (3, 3, 'tv commercial', 'Cleaning the apartment is a matter of seconds.', 8),
    (4, 4, 'tv commercial', 'You\'ll simply love it.', 4),
    (5, 1, 'magazine ad', 'Powderful experience.', 2),
    (6, 3, 'magazine ad', 'Cleaning your house has never been so easy.', 5),
    (7, 2, 'newspaper ad', 'Pleasure and responsibility come together.', 7),
    (8, 4, 'newspaper ad', 'Each traveller\'s choice.', 1);