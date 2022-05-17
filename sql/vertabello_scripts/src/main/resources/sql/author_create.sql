use vertabello_recap_of_sql_joins;
create table if not exists author (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_year INT NOT NULL,
    death_year INT
);

insert into author(id, name, birth_year, death_year)
values (1, 'Marcella Cole', 1983, null);

insert into author(id, name, birth_year, death_year)
values (2,	'Lisa Mullins',	1891,	1950);

insert into author(id, name, birth_year, death_year)
values (3, 'Dennis Stokes',	1935, 1994);

insert into author(id, name, birth_year, death_year)
values (4, 'Randolph Vasquez', 1957, 2004);

insert into author(id, name, birth_year, death_year)
values (5, 'Daniel Branson', 1965, 1990);

insert into author(id, name, birth_year, death_year)
values (6, 'Michael Rostkovsky', 1987, null);

insert into author(id, name, birth_year, death_year)
values (7, 'Brendan Hayes', 1985, null);

insert into author(id, name, birth_year, death_year)
values (8, 'Claudia Johnson', 1974, 2010);

insert into author(id, name, birth_year, death_year)
values (9, 'Ray Henry', 1974, null);

insert into author(id, name, birth_year, death_year)
values (10, 'Darlene Lyons', 1978, null);

insert into author(id, name, birth_year, death_year)
values (11, 'Ed Mason', 1960, 2013);

insert into author(id, name, birth_year, death_year)
values (12, 'Dominic Arnold', 1980, null);
