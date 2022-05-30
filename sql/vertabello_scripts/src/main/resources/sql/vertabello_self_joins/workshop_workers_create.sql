use vertabello_join_table_with_itself;
create table if not exists workshop_workers (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    specialization varchar(100) not null,
    master_id int,
    experience int not null,
    project_id int not null
);

insert into workshop_workers (id, name, specialization, master_id, experience, project_id)
    values (1, 'Mathew Conn', 'woodworking', null, 20, 1),
    (2, 'Kate Brown', 'woodworking', 1, 4, 1),
    (3, 'John Doe', 'incrusting', 5, 3, 1),
    (4, 'John Kowalsky', 'watchmaking', 7, 2, 3),
    (5, 'Suzan Gregowitch', 'incrusting', null, 15, 4),
    (6, 'Peter Parker', 'watchmaking', 7, 3, 2),
    (7, 'Joe Darrington', 'watchmaking', null, 13, 2),
    (8, 'Mary Smith', 'woodworking', 1, 4, 4),
    (9, 'Carlos Bell', 'incrusting', 5, 1, 4),
    (10, 'Dennis Wright', 'watchmaking', 7, 3, 3);