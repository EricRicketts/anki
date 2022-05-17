use vertabello_recap_of_sql_joins;
create table if not exists adaptation (
    book_id int,
    type varchar(255) not null,
    title varchar(255) not null,
    release_year int not null,
    rating decimal(2, 1) not null,
    foreign key (book_id) references book(id) on delete cascade
);
insert into adaptation (book_id, type, title, release_year, rating)
values (1, 'movie', 'Gone With The Wolves: The Beginning', 2008, 3.0),
(3, 'movie', 'Companions Of Tomorrow', 2001, 4.2),
(5, 'movie', 'Homeless Warrior', 2008, 4.0),
(2, 'movie', 'Blacksmith With Silver', 2014, 4.3),
(4, 'movie', 'Patrons And earers', 2004, 3.2),
(3, 'game', 'Companions Of Tomorrow', 2009, 4.4),
(6, 'movie', 'Defenders Of Fire', 1960, 4.6),
(6, 'game', 'Defenders Of Fire: Fire Awakening', 2003, 3.9),
(9, 'musical', 'Music At The Lake', 2007, 4.3),
(9, 'game',' Music At The Lake', 2008, 3.6),
(2, 'game', 'Silver Blacksmith', 1988, 3.4),
(10, 'musical', 'Lighting Faith', 1947, 4.2),
(11, 'musical', 'Companions And Officers', 1934, 4.1);