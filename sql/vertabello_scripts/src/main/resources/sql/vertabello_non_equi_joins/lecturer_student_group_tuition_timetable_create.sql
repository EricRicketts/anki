use vertabello_non_equi_joins;
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
    hour TIMESTAMP not null,
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