use vertabello_sql_joins_exercises;
create table if not exists lecturer (
    id int primary key auto_increment not null,
    name varchar(255) not null,
    language varchar(100) not null
);

create table if not exists student_group (
    id int primary key auto_increment not null,
    person_no int not null,
    language varchar(100) not null,
    group_level varchar(2) not null,
    lecturer_id int not null,
    foreign key (lecturer_id) references lecturer(id) on delete cascade
);

create table if not exists tuition (
    group_id int not null,
    cost int not null,
    foreign key (group_id) references student_group(id)
);

create table if not exists timetable (
    group_id int not null,
    room_id int not null,
    day varchar(50) not null,
    hour TIME not null,
    foreign key (group_id) references student_group(id)
);

insert into lecturer(id, name, language)
values (1, 'Maria Garcia', 'English'),
    (2, 'John Moepy', 'German'),
    (3, 'Hugo Dawn', 'French'),
    (4, 'Samuel May', 'Italian'),
    (5, 'Pawel Piotrowski', 'Polish');

insert into student_group(id, person_no, language, group_level, lecturer_id)
values (1, 10, 'English', 'B1', 1),
    (2, 15, 'English', 'A2', 1),
    (3, 10, 'Italian', 'B1', 4),
    (4, 20, 'English', 'A1', 1),
    (5, 25, 'German', 'A1', 2),
    (6, 10, 'Italian', 'A2', 4),
    (7, 15, 'Italian', 'A1', 4),
    (8, 20, 'French', 'A1', 3),
    (9, 10, 'German', 'A2', 2),
    (10, 10, 'French', 'B1', 3),
    (11, 15, 'Polish', 'A1', 5),
    (12, 10, 'Polish', 'A2', 5);

insert into tuition (group_id, cost)
values (1, 700),
    (2, 950),
    (3, 1100),
    (4, 500),
    (5, 800),
    (6, 900),
    (7, 750),
    (8, 500),
    (9, 600),
    (10, 1200),
    (11, 800),
    (12, 800);

insert into timetable(group_id, room_id, day, hour)
values (1, 13, 'monday', '13:00:00'),
    (1, 13, 'thursday', '15:00:00'),
    (2, 25, 'wednesday', '17:00:00'),
    (2, 25, 'friday', '12:00:00'),
    (3, 14, 'monday', '11:00:00'),
    (3, 14, 'friday', '18:00:00'),
    (4, 11, 'tuesday', '17:00:00'),
    (4, 11, 'thursday', '16:00:00'),
    (5, 14, 'monday', '14:00:00'),
    (5, 16, 'thursday', '14:00:00'),
    (6, 22, 'wednesday', '13:00:00'),
    (6, 11, 'friday', '15:00:00'),
    (7, 10, 'monday', '16:00:00'),
    (7, 14, 'friday', '17:00:00'),
    (8, 3, 'tuesday', '18:00:00'),
    (8, 3, 'thursday','19:00:00'),
    (9, 13, 'monday', '17:00:00'),
    (9, 13, 'thursday', '17:00:00'),
    (10, 11, 'wednesday', '14:00:00'),
    (10, 11, 'friday', '14:00:00'),
    (11, 8, 'monday', '11:00:00'),
    (11, 8, 'friday', '11:00:00'),
    (12, 5, 'tuesday', '14:00:00'),
    (12, 5, 'thursday', '14:00:00');