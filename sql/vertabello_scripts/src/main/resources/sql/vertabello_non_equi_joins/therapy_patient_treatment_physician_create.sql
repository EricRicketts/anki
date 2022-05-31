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

create table if not exists physician (
    id int primary key auto_increment not null,
    email varchar(255) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    experience int not null
);

insert into physician(id, email, first_name, last_name, experience)
values (1, 'henry.rhoads@medicalcenter.com', 'Henry', 'Rhoads', 4),
    (2, 'b.harper67@me.com', 'Brandon', 'Harper', 28),
    (3, 'calderwood.john@doctorhelp.ch', 'John', 'Calderwood', 7),
    (4, 'rubygriffin23@hotmail.com', 'Ruby', 'Griffin', 8),
    (5, 'vernon.ch86@doctorhelp.ch', 'Vernon', 'Chambers',  5),
    (6, 'donaldblunt@medicalcenter.com', 'Donald', 'Blunt', 25),
    (7, 'billycollins111@hotmail.com', 'Billy', 'Collins', 7),
    (8, 'jferris@me.com', 'James', 'Ferris', 10),
    (9, 'sam.orange@medicalcenter.com', 'Samantha', 'Core', 13),
    (10, 'ige.kuri@hotmail.com', 'Ige', 'Kuri', 1);

create table if not exists treatment (
    id int primary key auto_increment not null,
    name varchar(100) not null,
    price decimal(4, 1) not null,
    type varchar(255) not null
);

insert into treatment(id, name, price, type)
values (1, 'Thermotherapy', 96.5, 'pain relief'),
    (2, 'Cryotherapy', 114.0, 'treatment of tissue damage'),
    (3, 'Laser therapy', 338.0, 'laser medicine'),
    (4, 'Water cure', 60.5, 'relaxation'),
    (5, 'Thai massage', 67.2, 'acupressure'),
    (6, 'Shiatsu', 85.0, 'acupressure'),
    (7, 'Aromatherapy', 55.0, 'relaxation'),
    (8, 'Hypnotherapy', 159.0, 'relaxation'),
    (9, 'Hot stone massage', 60.0, 'relaxation'),
    (10, 'Acupuncture', 115.0, 'acupressure'),
    (11, 'Chiropractic', 199.0, 'pain relief');