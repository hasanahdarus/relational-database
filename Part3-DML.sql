---------- Release 1 (1a) -----------
insert into product_type (namatype) 
values ('Electronic');
insert into product_type (namatype) 
values ('Alat Tulis Kantor');
insert into product_type (namatype) 
values ('Sembako');

update product_type set created_at = now()
where idtype in (1,2,3)

select * from product_type

---------- Release 1 (1b) -----------

insert into product (nama_product , idtype , price, stock, created_at)
values ('Smartphone', 1, 400000.52, 10,  now());

insert into product (nama_product , idtype, price, stock, created_at)
values ('Laptop', 1, 1000000.52, 50,  now());

select  * from product p 

---------- Release 1 (1c) -----------

insert into product (nama_product , idtype , price, stock, created_at)
values ('Bolpoin Pilot', 2, 20.5, 300,  now());

insert into product (nama_product , idtype , price, stock, created_at)
values ('Pensil 2B', 2, 50.7, 110,  now());

insert into product (nama_product , idtype, price, stock, created_at)
values ('Pensil Faber Castell', 2, 8000.7, 75,  now());

---------- Release 1 (1d) -----------

insert into product (nama_product , idtype, price, stock, created_at)
values ('Segitiga Biru', 3, 25000, 20,  now());

insert into product (nama_product , idtype, price, stock, created_at)
values ('Rose Brand', 3, 8900.20, 14,  now());

insert into product (nama_product , idtype ,price, stock, created_at)
values ('Maizena', 3, 15500, 20,  now());

---------- Release 1 (1e) -----------

insert into product_description (desc_text, created_at)
values ('A smartphone is a mobile device that combines the functionality of a traditional mobile phone with advanced computing capabilities.', now())

insert into product_description (desc_text, created_at)
values ('Sebuah laptop adalah komputer pribadi yang dapat dipindahkan dan dibawa dengan mudah sehingga dapat digunakan di banyak tempat.', now())

insert into product_description (desc_text, created_at)
values ('alat tulis sederhana untuk mencatat di atas kertas', now())

insert into product_description (desc_text, created_at)
values ('Tepung Tepung adalah partikel padat yang berbentuk butiran halus atau sangat halus tergantung proses penggilingannya.', now())

update product set id_des=1
where id_product = 1
update product set id_des=2
where id_product = 2
update product set id_des=3
where id_product in (3,4,5)
update product set id_des=4
where id_product in (6,7,8)

---------- Release 1 (1f) -----------
insert into description (desc_text)
values ('Pembayaran Menggunakan TF');
insert into description (desc_text)
values ('Pembayaran Menggunakan Uang Tunai');
insert into description (desc_text)
values ('Pembayaran Menggunakan Kartu ATM');

select  * from payment_method pm 

insert  into payment_method (pay_name, id_des )
values ('Transfer Bank', 1);
insert  into payment_method (pay_name, id_des)
values ('Tunai', 2);
insert  into payment_method (pay_name, id_des)
values ('Credit', 3);

---------- Release 1 (1g) -----------

insert into users (username, fullname, status, gender, email, password)
values ('Dodi','dodiyanto','Gold','laki-laki','hehuadbasuB@sdfnsi.com', 'sf15');
insert into users (username, fullname, status, gender, email, password)
values ('siti','sittima','silver','perempuan','weuhrfuiuwen@ksdko.co', 'dsbfuse5');
insert into users (username, fullname, status, gender, email, password)
values ('Bayu','bayutomo','black','laki-laki','ebfwuefbw@eu.id', '2558');
insert into users (username, fullname, status, gender, email, password)
values ('Budi','Budianto','Gold','laki-laki','ebfyyefy@maill', '595');
insert into users (username, fullname, status, gender, email, password)
values ('ayu','ayunita','silver','perempuan','aduhuah@mail.com', '545626');

---------- Release 1 (1h) -----------

insert into transaction (user_id, id_pey, total)
values (1, 1, 500000 );

insert into transaction (user_id, id_pey, total)
values (2, 1, 100000 );

insert into transaction (user_id, id_pey, total)
values (2, 2, 50000 );

---------- Release 1 (1i) -----------

insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 2, 2, 5000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 3, 2, 15000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 1, 1, 500000);

insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (2, 4, 10, 47000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (2, 2, 11, 25000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (2, 1, 10, 30000);

insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 4, 8, 6000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 3, 7, 330000);
insert  into transaction_detail (transaction_id, id_product, jumlah, harga)
values (1, 2, 8, 900000);

---------- Release 1 (1j) -----------

insert into transaction (user_id, id_pey, total)
values (3, 1, 50000 );

insert into transaction (user_id, id_pey, total)
values (5, 2, 140000 );

insert into transaction (user_id, id_pey, total)
values (1, 3, 13000 );

---------- Release 1 (2a) -----------

select username from users u 
where  gender = 'laki-laki';

---------- Release 1 (2b) -----------

select * from product p 
where  id_product  = 3;

---------- Release 1 (2c) -----------

select  * from users u 
where  created_at >= current_date - interval '7 days'
and fullname ilike '%a%';

---------- Release 1 (2d) -----------

select count(id) from users u 
where  gender ='perempuan';

---------- Release 1 (2e) -----------

select * from users u order by username;

---------- Release 1 (2f) -----------

select * from transaction_detail td  
where  id_product =3 limit 5;

---------- Release 1 (3a) -----------

update product set nama_product = 'product dummy'
where id_product = 1;

---------- Release 1 (3b) -----------

update transaction_detail set jumlah =3
where id_product = 1;

---------- Release 1 (4a) -----------

delete from transaction_detail 
where id_product = 1;

delete from product 
where id_product = 1;

---------- Release 1 (4b) -----------

delete from transaction_detail 
where id_product in (select id_product from product where idtype = 1);

delete from product 
where idtype = 1;

---------- Release 2 (1) -----------

update transaction set user_id =1 
where user_id = 2;

---------- Release 2 (2) -----------

select sum(total) from transaction t 
where user_id = 1

---------- Release 2 (3) -----------

select sum(total) as total
from transaction_detail td  
inner join product p on td.id_product = p.id_product 
where p.idtype = 2;

---------- Release 2 (4) -----------
select p.*, pt.namatype
from product p 
left join product_type pt on p.idtype = pt.idtype;

---------- Release 2 (5) -----------
select t.*, pt.namatype
from transaction t 
left join transaction_detail td on t.transaction_id = td.transaction_id 
left join product p on td.id_product =p.id_product 
left join product_type pt ON p.idtype =pt.idtype;

---------- Release 2 (6) -----------
select  * from product p 
where not exists (select 1 from transaction_detail td 
where td.id_product = p.id_product );
---------- Release 2 (7) -----------
--alamat
insert into alamat(user_id, alamat_detail)
values (2,'jl.uggfytftbjn');


--function
-- Langkah 1: Membuat Fungsi Trigger
CREATE OR REPLACE FUNCTION trigger_set_timestamp()
RETURNS trigger AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Membuat Trigger alamat
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON alamat
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `alamat`
UPDATE alamat
SET alamat_detail = 'Jl. Cemara No.8, RT.01/RW.3, Mintaragen, Kec. Tegal Tim., Kota Tegal, Jawa Tengah 52121'
WHERE alamat_id = 1;


-- Membuat Trigger description
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON description
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `alamat`
UPDATE description 
SET desc_text = 'pembayaran menggunakan transfer'
WHERE id_des = 1;

-- Membuat Trigger payment_method
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON payment_method
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `payment_method`
UPDATE payment_method 
SET pay_name = 'cash'
WHERE id_pay = 2;

-- Membuat Trigger product
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON product
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `product`
UPDATE product 
SET price = 2000
WHERE id_product = 3;

-- Membuat Trigger product_description
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON product_description
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `product_description`
UPDATE product_description 
SET desc_text = 'bla bla bal'
WHERE id_des = 3;

-- Membuat Trigger product_type
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON product_type
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `product_type`
UPDATE product_type 
SET namatype = 'alat elektronik'
WHERE idtype = 1;

-- Membuat Trigger transaction
CREATE TRIGGER set_timestamp
BEFORE UPDATE ON transaction
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `transaction`
UPDATE transaction
SET total = 25000
WHERE transaction_id = 1;

-- Membuat Trigger transaction_detail
CREATE TRIGGER set_timestamp
BEFORE UPDATE on transaction_detail
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `transaction_detail`
UPDATE transaction_detail 
SET jumlah = 20
WHERE detail_id = 2;

--user_payment_method_detail
insert into user_payment_method_detail (user_id, id_pay)
values (3, 2);

-- Membuat Trigger user_payment_method_detail
CREATE TRIGGER set_timestamp
BEFORE UPDATE on user_payment_method_detail
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `user_payment_method_detail`
UPDATE user_payment_method_detail 
SET user_id = 4
WHERE id = 1;

-- Membuat Trigger users
CREATE TRIGGER set_timestamp
BEFORE UPDATE on users
FOR EACH ROW
EXECUTE FUNCTION trigger_set_timestamp();

-- Melakukan Update pada Tabel `user_payment_method_detail`
UPDATE users
SET username = 'nana'
WHERE id = 1;

---------- Release 2 (8) -----------

create  view product_with_product_type as select p.*, pt.namatype
from product p 
left join product_type pt on p.idtype = pt.idtype

select  * from product_with_product_type 