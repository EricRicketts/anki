use vertabello_non_equi_joins;
create table if not exists employee (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    position varchar(255) not null,
    department varchar(100) not null,
    age int not null
);

insert into employee(id, name, position, department, age)
values (1, 'Mark Gatis', 'Senior Software Developer', 'IT', 37),
    (2, 'John Doe', 'Marketing Specialist', 'Marketing', 29),
    (3, 'Samantha Lane', 'Junior Java Developer', 'IT', 25),
    (4, 'Jessica Brand', 'Junior Marketing Specialist', 'Marketing', 31),
    (5, 'Martin Godspeed', 'Junior Content Specialist', 'Marketing', 26),
    (6, 'Lucy Frank', 'Content Developer', 'Marketing', 30);
