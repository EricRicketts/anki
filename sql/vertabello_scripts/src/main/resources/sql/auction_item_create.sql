use vertabello_recap_of_sql_joins;
create table if not exists bidder (
    id int not null,
    name varchar(100) not null,
    bought_item_id int,
    final_price int not null,
    foreign key (bought_item_id) references auction_item(id) on delete cascade
);

insert into bidder(id, name, bought_item_id, final_price)
    values (1, 'Carlos Santorini', 1, 6750),
    (1, 'Carlos Santorini', 4, 1100),
    (2, 'Michael Yung', 3, 400),
    (2, 'Michael Yung', 2, 760),
    (3, 'Sylvia Bartoletti', 7, 2200),
    (4, 'Katherine Manner', 10, 24000),
    (5, 'Sven Ymmirson', 9, 5000),
    (6, 'Peter Prevny', 8, 130);