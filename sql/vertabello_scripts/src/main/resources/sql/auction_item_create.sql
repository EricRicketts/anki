use vertabello_recap_of_sql_joins;
create table if not exists auction_item (
    entry_id int primary key auto_increment not null,
    name varchar(100) not null,
    type varchar(50) not null,
    initial_price int
);

insert into auction_item(entry_id, name, type, initial_price)
    values (1, 'Across the Stars', 'painting', 5000),
    (2, 'Separated Lovers', 'sculpture', 400),
    (3, 'Liberated David', 'manuscript', 120),
    (4, 'Three Apples', 'painting', 760),
    (5, 'Temptation', 'sculpture', 320),
    (6, 'Thinking Thomas', 'book', 450),
    (7, 'Libretto', 'manuscript', 670),
    (8, 'Theology and Divinity', 'book', 130),
    (9, 'Sun and Moon', 'painting', 3000),
    (10, 'Behind the Weil', 'painting', 6000);