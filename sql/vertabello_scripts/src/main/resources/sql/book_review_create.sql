use vertabello;
create table if not exists book_review (
    book_id int,
    review varchar(255) not null,
    author varchar(255) not null,
    foreign key (book_id) references book(id) on delete cascade
);

insert into book_review (book_id, review, author)
values (1, 'An incredible book', 'Sylvia Jones'),
    (1, 'Greate, although it has some flaws', 'Jessica Parker'),
    (2,	'Dennis Stokes takes the reader for a ride full of emotions', 'Thomas Green'),
    (3,	'Incredible craftmanship of the author', 'Martin Freeman'),
    (4,	'Not the best book by this author', 'Jude Falth'),
    (5,	'Claudia Johnson at her best!', 'Joe Marqiz'),
    (6,	'I cannot recall more captivating plot', 'Alexander Durham');