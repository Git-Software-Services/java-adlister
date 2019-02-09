use adlister_db;

-- drop table if exists users;

create table if not exists users (
id int unsigned not null auto_increment,
username varchar(255) not null,
email varchar(255) not null,
password varchar(255) not null,
primary key (id)
);

insert into users(username, email, password)values
('Gary', 'gstar@gmail.com', 'password'),
('Sally', 'SallyRoss@gmail.com', 'password123'),
('Patti', 'pattipattipatti@gmail.com', 'password12345');


create table if not exists ads (
id int unsigned not null auto_increment,
user_id int unsigned not null,
title varchar(255) default null,
description text default null,
primary key (id),
foreign key (user_id) references users (id)
);

insert into ads(user_id, title, description)values
( 1, 'playstation for sale','This is a slightly used playstation'),
(2,'Super Nintendo', 'Get your game on with this old-school classic!'),
(3, 'Junior Java Developer Position', 'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript'),
(4, 'JavaScript Developer needed', 'Must have strong Java skills');

select * from users;
select * from ads;