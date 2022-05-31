use vertabello_join_table_with_itself;
create table if not exists person(
    id int primary key auto_increment not null,
    name varchar(100) not null,
    mother_id int,
    father_id int,
    year_born int not null
);

insert into person(id, name, mother_id, father_id, year_born)
    values(1, 'Victor Allison', 14, 15, 1993),
    (2, 'Gabriela Allison',	14, 15, 1997),
    (3, 'Linda Reese', 16, 17, 1991),
    (4, 'John Reese', 16, 17, 1994),
    (5, 'Julie Cash', null, 18, 1999),
    (6, 'Tiffany Hawkins', 19, 20, 1995),
    (7, 'Jeremy Hawkins', 19, 20, 1994),
    (8, 'Nick Kovalsky', 14, null, 1997),
    (9, 'Edith Johnson', null, null, 1970),
    (10, 'John Kersky', null, null, 1994),
    (11, 'Paul Weber', null, null, 1969),
    (12, 'Otis Weber', 9, 11, 2001),
    (13, 'Sophie Weber', 9, 11, 1997),
    (14, 'Julie Allison', null, null, 1974),
    (15, 'Oscar Allison', null, null, 1970),
    (16, 'Marie Simpson', null, null, 1965),
    (17, 'Jack Reese', null, null, 1960),
    (18, 'Mark Cash', null, null, 1963),
    (19, 'Alice Hawkins', null, null, 1967),
    (20, 'David Hawkins', null, null, 1962);
