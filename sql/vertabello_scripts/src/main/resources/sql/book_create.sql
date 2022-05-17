use vertabello;
create table if not exists book (
    id int not null auto_increment primary key,
    author_id int,
    title varchar(255) not null,
    publish_year int not null,
    publishing_house varchar(255) not null,
    rating decimal(2, 1) not null,
    foreign key (author_id) references author(id) on delete cascade
);

insert into book (id, author_id, title, publish_year, publishing_house, rating)
values (1, null, 'Soulless girl', 2008, 'Golden Albatros', 4.3),
       (2, null, 'Weak Heart', 1980, 'Diarmud Inc.', 3.8),
       (3, 4, 'Faith Of Light', 1995, 'White Cloud Press', 4.3),
       (4, null, 'Memory Of Hope', 2000, 'Rutis Enterprises', 2.7),
       (5, 6, 'Warrior Of Wind', 2005, 'Maverick', 4.6),
       (6, 11, 'Defenders Of Fire', 1920, 'White Cloud Press', 4.9),
       (7, 11, 'Patrons And Bearers', 1925, 'Golden Albatros', 5.0),
       (8, 9, 'Beast In The Mist', 2000, 'Rutis Enterprises', 4.2),
       (9, 9, 'Music At The Lake', 2004, 'White Cloud Press', 3.6),
       (10, 12, 'Companion Of Tomorrow', 1949, 'Golden Albatros', 3.4),
       (11, 2, 'Companions And Officers', 1930, 'Helix', 4.5),
       (12, 12, 'Spirits Of Dreams', 1946, 'Helix', 4.4),
       (13, 8, 'Mistresses And Gods', 2000, 'Golden Albatros', 4.1),
       (14,	8, 'Accident Of Freedom', 1993, 'White Cloud Press', 2.8),
       (15, 10, 'Whispers Of Eternity', 2004, 'Vanguard Publications', 3.3),
       (16, 1, 'Gone With The Wolves', 2005, 'Helix', 4.5),
       (17, 3, 'Blacksmith With Silver', 1984, 'Diarmud Inc.', 3.6),
       (18, 10, 'Warrior Without A Home', 2002, 'Vanguard Publications', 3.7),
       (19, 10, 'Tempations In Nature', 2007, 'Maverick', 3.9),
       (20, 9, 'Guarding The Emperor', 1988, 'Flying Pen Media', 4.1),
       (21, null, 'Crossbow Of Wind', 2006, 'Flying Pen Media', 4.0),
       (22, null, 'Weep Of The West', 2001, 'Flying Pen Media', 4.9);
