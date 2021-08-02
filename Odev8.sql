--1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
   id SERIAL PRIMARY KEY,	
   name VARCHAR(50), 
   birthday DATE,      
   email VARCHAR(100)  
);

--2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (id, name, birthday, email) values (1, 'Casey', '1952-04-24', 'cgladdis0@rambler.ru');
insert into employee (id, name, birthday, email) values (2, 'Theodor', '1992-08-15', 'tbraime1@salon.com');
insert into employee (id, name, birthday, email) values (3, 'Kurt', '1963-05-19', 'kmeharry2@youtu.be');
insert into employee (id, name, birthday, email) values (4, 'Marrissa', '1980-03-18', 'mheskins3@booking.com');
insert into employee (id, name, birthday, email) values (5, 'Demetra', '1956-11-27', 'dcresswell4@alexa.com');
insert into employee (id, name, birthday, email) values (6, 'Jesus', '1953-05-25', 'jatwel5@slideshare.net');
insert into employee (id, name, birthday, email) values (7, 'Morgen', '1955-09-23', 'mbolderson6@amazon.com');
insert into employee (id, name, birthday, email) values (8, 'Amie', '1974-07-28', 'amontez7@elegantthemes.com');
insert into employee (id, name, birthday, email) values (9, 'Floris', '1991-12-01', 'fcorradeschi8@economist.com');
insert into employee (id, name, birthday, email) values (10, 'Eric', '1963-02-20', 'ebegg9@mozilla.com');
insert into employee (id, name, birthday, email) values (11, 'Odelia', '1972-10-23', 'oadkina@addthis.com');
insert into employee (id, name, birthday, email) values (12, 'Ashia', '1992-08-26', 'aklessb@eventbrite.com');
insert into employee (id, name, birthday, email) values (13, 'Tedie', '1965-08-18', 'tkrugmannc@washingtonpost.com');
insert into employee (id, name, birthday, email) values (14, 'Les', '1996-10-15', 'lphippd@spotify.com');
insert into employee (id, name, birthday, email) values (15, 'Fonz', '1970-11-01', 'fcutforde@delicious.com');
insert into employee (id, name, birthday, email) values (16, 'Elisabet', '1955-07-10', 'eschefflerf@cyberchimps.com');
insert into employee (id, name, birthday, email) values (17, 'Alasdair', '1962-04-07', 'aellerayg@sakura.ne.jp');
insert into employee (id, name, birthday, email) values (18, 'Gordan', '1972-07-22', 'gslaymakerh@hostgator.com');
insert into employee (id, name, birthday, email) values (19, 'Radcliffe', '1960-10-13', 'rmatelyunasi@exblog.jp');
insert into employee (id, name, birthday, email) values (20, 'Franny', '1972-07-09', 'fospellisseyj@chicagotribune.com');
insert into employee (id, name, birthday, email) values (21, 'Reuven', '1980-02-01', 'rhackeyk@php.net');
insert into employee (id, name, birthday, email) values (22, 'Rodney', '1972-04-20', 'rclubbl@topsy.com');
insert into employee (id, name, birthday, email) values (23, 'Stepha', '1975-10-25', 'sbrickdalem@domainmarket.com');
insert into employee (id, name, birthday, email) values (24, 'Aaren', '1956-12-31', 'aalpesn@berkeley.edu');
insert into employee (id, name, birthday, email) values (25, 'Heall', '1969-03-27', 'hmuggletono@123-reg.co.uk');
insert into employee (id, name, birthday, email) values (26, 'Siusan', '1979-01-30', 'sheimsp@vinaora.com');
insert into employee (id, name, birthday, email) values (27, 'Sybil', '1968-12-21', 'sblodgetq@t-online.de');
insert into employee (id, name, birthday, email) values (28, 'Robinson', '1954-02-25', 'raloshechkinr@scientificamerican.com');
insert into employee (id, name, birthday, email) values (29, 'Benn', '1975-02-12', 'bmoorruds@cnbc.com');
insert into employee (id, name, birthday, email) values (30, 'Farris', '1972-12-16', 'fmalimt@sitemeter.com');
insert into employee (id, name, birthday, email) values (31, 'Muire', '1994-07-10', 'mandriolettiu@simplemachines.org');
insert into employee (id, name, birthday, email) values (32, 'Daven', '1964-01-17', 'dlegganv@oracle.com');
insert into employee (id, name, birthday, email) values (33, 'Padraic', '1998-03-27', 'pbloanw@businessweek.com');
insert into employee (id, name, birthday, email) values (34, 'Lorianna', '1951-06-11', 'lpumfreyx@t-online.de');
insert into employee (id, name, birthday, email) values (35, 'Iorgo', '1975-07-24', 'ibenedyktowiczy@altervista.org');
insert into employee (id, name, birthday, email) values (36, 'Sallyann', '1955-05-31', 'sdearmanz@discuz.net');
insert into employee (id, name, birthday, email) values (37, 'Sherm', '1950-11-01', 'sdunrige10@ca.gov');
insert into employee (id, name, birthday, email) values (38, 'Morey', '1971-02-02', 'moakenfield11@boston.com');
insert into employee (id, name, birthday, email) values (39, 'Olin', '1964-10-03', 'omcilhagga12@tumblr.com');
insert into employee (id, name, birthday, email) values (40, 'Aylmar', '1961-11-10', 'atoombs13@phoca.cz');
insert into employee (id, name, birthday, email) values (41, 'Olga', '1999-06-26', 'ovanleijs14@foxnews.com');
insert into employee (id, name, birthday, email) values (42, 'Claudie', '1969-11-29', 'ctolson15@usda.gov');
insert into employee (id, name, birthday, email) values (43, 'Mathe', '1952-06-22', 'mskells16@google.it');
insert into employee (id, name, birthday, email) values (44, 'Tessy', '1973-12-31', 'tskough17@google.com.hk');
insert into employee (id, name, birthday, email) values (44, 'Tessy', '1973-12-31', 'tskough17@google.com.hk');
insert into employee (id, name, birthday, email) values (45, 'Onida', '1996-04-22', 'orosendale18@bluehost.com');
insert into employee (id, name, birthday, email) values (46, 'Lynnett', '1972-08-15', 'lbackes19@telegraph.co.uk');
insert into employee (id, name, birthday, email) values (47, 'Kelli', '1994-10-21', 'kcocker1a@arstechnica.com');
insert into employee (id, name, birthday, email) values (48, 'Mirabel', '1985-02-01', 'mdrury1b@google.com');
insert into employee (id, name, birthday, email) values (49, 'Thorin', '1953-11-07', 'toven1c@smugmug.com');
insert into employee (id, name, birthday, email) values (50, 'Porter', '1961-12-12', 'pmcsorley1d@qq.com');

--3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

-- ismi Marrissa olan satirdaki bilgileri yenile.

UPDATE employee
SET name     = 'Zeynep',
	  birthday = '1992-10-04',
	  email    = 'zeynep92@gmail.com'
WHERE id =1;

-- ismi Marrissa olan satirdaki bilgileri yenile.

UPDATE employee
SET name     = 'Zeynep',
	  email    = 'zeynep92@gmail.com',
	  birthday = '1992-10-04'
WHERE name = 'Marrissa';

-- listeki son 5 kisinin dogum tarihini 1111-11-11 haline getir ve email adreslerini gizle.

UPDATE employee
SET birthday = '1111-11-11',
	  email    = 'XXXXX'
WHERE id >45;

-- ismi Demetray olan kisinin satirindeki email adresini guncelle.

UPDATE employee
SET email    = 'bir_demetray_ımben@tcdd.com'
WHERE name   = 'Demetray';

-- '1954-02-25' dogum tarihli kisinin verilerini guncelle.

UPDATE employee
SET name     = 'Veli',
	  email    = 'veli_akman@gmail.com'
WHERE birthday = '1954-02-25';

-- 25. id degerine sahip satirdaki ismi guncelle.

UPDATE employee 
SET name = 'Hilal'
WHERE id = 25;
4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

-- id si 9 olan satiri listeden sil.

DELETE FROM employee
WHERE id = 9;

-- email i icinde 3 adet e bulunan satirlari listeden sil.

DELETE FROM employee
WHERE email LIKE '%e%e%e%';

-- 1955 den once doganlari listeden sil.

DELETE FROM employee
WHERE birthday BETWEEN '1955-01-01' AND '1965-01-01'; 

-- .com ile biten email leri listeden sil.

DELETE FROM employee 
WHERE email ILIKE '%.COM';

-- Kurt,Reuven, Aylmar, Tessy ve Claudie isimlerine sahip satirlari sil.

DELETE FROM employee 
WHERE name IN ('Kurt', 'Reuven', 'Aylmar', 'Tessy', 'Claudie');
