use vertabello_non_equi_joins;
create table if not exists patient (
    id int primary key auto_increment not null,
    email varchar(255) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null
);

insert into patient(id, email, first_name, last_name)
values (1, 'mark.jacobson112@outlook.com', 'Mark', 'Jacobson'),
    (2, 'tguerrero@rhyta.com', 'Tracy', 'Guerrero'),
    (3, 'sandra.malcolm63@yahoo.com', 'Sandra', 'Malcolm'),
    (4, 'katiet99xoxo@gmail.com', 'Kate', 'Todd'),
    (5, 'melissa.morganMM@mee.com', 'Melissa', 'Morgan'),
    (6, 'emmy.anderson99@avalon.com', 'Emily', 'Anderson'),
    (7, 'betty.warner@verizon.net', 'Betty', 'Warner'),
    (8, 'b.harper67@me.com', 'Brandon', 'Harper'),
    (9, 'c.whittier@yahoo.ca', 'Carl', 'Whittier'),
    (10, 'vernon.ch86@doctorhelp.ch', 'Vernon', 'Chambers'),
    (11, 'billycollins111@hotmail.com', 'Billy', 'Collins'),
    (12, 'pam.turner1987@nelly.com', 'Pamela', 'Turner'),
    (13, 'david.phillips515@gmail.com', 'David', 'Phillips'),
    (14, 'super.gamer77@tank.com', 'William', 'Jones'),
    (15, 'briankillerofthefox@hotmail.com', 'Brian', 'Fox');