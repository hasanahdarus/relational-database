---------- 1 -----------
create database alta_online_shop;

---------- 2a -----------
create table users (
id serial,
username varchar(255),
fullname varchar(255),
status varchar(255),
gender varchar(10),
email varchar(255),
password varchar(255),
created_at timestamp default current_timestamp,
updated_at timestamp,
deleted_at timestamp,

primary key (id)
)

select  * from users u

---------- 2b -----------
create table product_type (
idtype serial,
namatype varchar(255),
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (idtype) 
)

select * from product_type pt

create table product_description (
id_des serial,
desc_text text,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id_des)
)

select * from product_description pd

create table payment_method (
id_pay serial,
pay_name varchar(50),
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id_pay)
)

select * from payment_method pm

create table product (
id_product serial,
nama_product varchar(100),
idtype int,
id_des int,
price decimal(10,2),
stock int,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id_product),
foreign key (idtype) references product_type(idtype),
foreign key (id_des) references product_description(id_des)
)

select * from product p

--------- 2c -----------
create table transaction (
transaction_id serial,
user_id int,
id_pey int,
total decimal(10, 2),
transaction_date timestamp default current_timestamp,
updated_at timestamp,

primary key (transaction_id),
foreign key (user_id) references users(id),
foreign key (id_pey) references payment_method(id_pay)
)

select * from transaction t

create table transaction_detail (
detail_id serial,
transaction_id int,
id_product int,
jumlah int,
harga decimal(10, 2),
total decimal(10, 2) generated always as (jumlah * harga) stored,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (detail_id),
foreign key (transaction_id) references transaction(transaction_id),
foreign key (id_product) references product(id_product)
)

select * from transaction_detail td

---------- 3 -----------
create  table kurir (
id serial,
name varchar(50),
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id)
)

select  * from kurir k

---------- 4 -----------
alter table kurir add column ongkos_dasar decimal(10, 2);

---------- 5 -----------
alter table kurir rename to shipping;
select * from shipping s

---------- 6 -----------
drop table if exists shipping;

---------- 7a -----------
create table description (
id_des serial,
desc_text text,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id_des)
)

select * from description

alter table payment_method  add column id_des int;
ALTER TABLE payment_method
ADD CONSTRAINT fk_payment_description
    FOREIGN KEY (id_des)
    REFERENCES description (id_des);


---------- 7b -----------
create table alamat (
alamat_id serial,
user_id int,
alamat_detail text,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (alamat_id),
foreign key (user_id) references users(id)
);

select * from alamat a

---------- 7c -----------
create table user_payment_method_detail (
id serial,
user_id int,
id_pay int,
created_at timestamp default current_timestamp,
updated_at timestamp,

primary key (id),
foreign key (user_id) references users(id),
foreign key (id_pay) references payment_method(id_pay)
);

select  * from  user_payment_method_detail spmd


