use vertabello_non_equi_joins;
create table if not exists product_price (
    product_id int not null,
    price int not null,
    start_date DATE not null,
    end_date DATE not null
);

create table if not exists orders (
    id int primary key auto_increment not null,
    product_id int not null,
    order_date DATE not null,
    amount int not null
);
insert into product_price(product_id, price, start_date, end_date)
values (1, 300, '2015-03-10', '2015-03-15'),
    (1, 350, '2015-03-16', '2015-03-21'),
    (2, 100, '2015-04-01', '2015-04-25'),
    (3, 125, '2015-03-10', '2015-03-20'),
    (3, 145, '2015-03-21', '2015-03-29'),
    (4, 200, '2015-01-01', '2015-01-31');

insert into orders(id, product_id, order_date, amount)
values (1, 1, '2015-03-17', 150),
    (2, 1, '2015-03-11', 367),
    (3, 1, '2015-03-20', 100),
    (4, 2, '2015-04-20', 220),
    (5, 3, '2015-03-15', 137),
    (6, 3, '2015-03-22', 579),
    (7, 4, '2015-01-11', 180),
    (8, 3, '2015-03-19', 223);


