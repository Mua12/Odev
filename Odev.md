# ÖDEVLER


## Ödev 1

**1.*film* tablosunda bulunan *title* ve *description* sütunlarındaki verileri sıralayınız.**

`SELECT title, description FROM film;`

**2. *film* tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.**

`SELECT * FROM film`
`WHERE length > 60 AND length < 75;`

**3. *film* tablosunda bulunan tüm sütunlardaki verileri *rental_rate* 0.99 VE *replacement_cost* 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.**

`SELECT * FROM film`
`WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99; `

**4. *customer* tablosunda bulunan *first_name* sütunundaki değeri 'Mary' olan müşterinin *last_name* sütunundaki değeri nedir?** 

`SELECT * FROM customer`
`WHERE first_name = 'Mary'`
Output --> Smith

**5.*film* tablosundaki uzunluğu (length) 50 ten büyük OLMAYIP aynı zamanda *rental_rate* değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.** 

`SELECT * FROM film`
`WHERE length < 50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);`


## Ödev 2

**1. *film* tablosunda bulunan tüm sütunlardaki verileri *replacement cost* değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)**

`SELECT * FROM film`
`WHERE replacement_cost BETWEEN 12.99 AND 16.98;`

**2. *actor* tablosunda bulunan *first_name* ve *last_name* sütunlardaki verileri *first_name 'Penelope' veya 'Nick' veya 'Ed'* değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)**

 `SELECT first_name, last_name FROM actor`
 `WHERE first_name IN ('Penelope', 'Nick', 'Ed');`

**3. *film* tablosunda bulunan tüm sütunlardaki verileri *rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99* olma koşullarıyla sıralayınız. (IN operatörünü kullanınız.)**

`SELECT * FROM film`
`WHERE rental_rate IN (0.9, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);`


## Ödev 3

**1. *country* tablosunda bulunan *country* sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.**

`SELECT country FROM country`
`WHERE country LIKE 'A%a';`

**2. *country* tablosunda bulunan *country* sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.**

`SELECT country FROM country`
`WHERE country LIKE '%_____n';
-- '_' tek yer tutar, '&' birden çok yer tutabilir veya hiç tutmaz. `

**3. *film* tablosunda bulunan *title* sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.**

`SELECT title FROM film `
`WHERE title ILIKE '%T%T%T%T%'; `

**4. *film* tablosunda bulunan tüm sütunlardaki verilerden *title* 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve *rental_rate 2.99* olan verileri sıralayınız.**

`SELECT * FROM film `
`WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;`


## Ödev 4

**1. *film* tablosunda bulunan *replacement_cost* sütununda bulunan birbirinden farklı değerleri sıralayınız.**

`SELECT DISTINCT replacement_cost FROM film;`

**2. *film* tablosunda bulunan *replacement_cost* sütununda birbirinden farklı kaç tane veri vardır?**

`SELECT COUNT (DISTINCT replacement_cost) FROM film;`

**3. *film* tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?**

`SELECT title FROM film`
`WHERE title LIKE 'T%'; `

**4. *country* tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?**

`SELECT COUNT(*) FROM country`
`WHERE country LIKE '_____';`

**5. *city* tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?**

`SELECT count(*) FROM city`
`WHERE city ILIKE '%R';`


## Ödev 5

**1. *film* tablosunda bulunan ve film ismi (*title*) 'n' karakteri ile biten en uzun (*length*) 5 filmi sıralayınız.**

`SELECT * FROM film`
`WHERE title LIKE '%n'`
`ORDER BY length DESC`
`LIMIT 5;`

**2. *film* tablosunda bulunan ve film ismi (*title*) 'n' karakteri ile biten en kısa (*length*) ikinci 5 filmi sıralayınız.**

`SELECT * FROM film`
`WHERE title LIKE '%n'`
`ORDER BY length ASC`
`LIMIT 5;`

**3. *customer* tablosunda bulunan *last_name* sütununa göre azalan yapılan sıralamada *store_id* 1 olmak koşuluyla ilk 4 veriyi sıralayınız.**

`SELECT * FROM customer`
`WHERE store_id = 1` 
`ORDER BY last_name DESC`
`LIMIT 4; `


## Ödev 6

**1. *film* tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?**

`SELECT AVG(rental_rate) FROM film;`

**2. *film* tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?**

`SELECT COUNT(*) FROM film`
`WHERE title LIKE 'C%';`

**3. *film* tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?**

`SELECT * FROM film`
`WHERE rental_rate = 0.99`
`ORDER BY length DESC`
`LIMIT 1;`

**4. *film* tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?**

`SELECT COUNT(DISTINCT replacement_cost) FROM film`
`WHERE length > 150;` 


## Ödev 7

**1. *film* tablosunda bulunan filmleri rating değerlerine göre gruplayınız.**

`SELECT rating FROM film`
`GROUP BY rating;`

**2. *film* tablosunda bulunan filmleri *replacement_cost* sütununa göre grupladığımızda film sayısı 50 den fazla olan *replacement_cost* değerini ve karşılık gelen film sayısını sıralayınız.**

`SELECT replacement_cost, COUNT(*) FROM film`
`GROUP BY replacement_cost`
`HAVING COUNT(*) > 50`

**3. *customer* tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?**

`SELECT store_id, COUNT(*) FROM customer `
`GROUP BY store_id`

**4. *city* tablosunda bulunan şehir verilerini *country_id* sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıra country_id bilgisini ve şehir sayısını paylaşınız.**

`SELECT country_id, COUNT(*) FROM city`
`GROUP BY country_id`
`ORDER BY COUNT(*) DESC`
`LIMIT 1;`


## Ödev 8

**1. *test* veritabanınızda *employee* isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.**

`CREATE TABLE employee(`
`   id SERIAL PRIMARY KEY,  `
`	name VARCHAR(50),   `
`	birthday DATE,      `
`   email VARCHAR(100)  `
`);`

**2. Oluşturduğumuz *employee* tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.**

`insert into employee (id, name, birthday, email) values (1, 'Casey', '1952-04-24', 'cgladdis0@rambler.ru');`
`insert into employee (id, name, birthday, email) values (2, 'Theodor', '1992-08-15', 'tbraime1@salon.com');`
`insert into employee (id, name, birthday, email) values (3, 'Kurt', '1963-05-19', 'kmeharry2@youtu.be');`
`insert into employee (id, name, birthday, email) values (4, 'Marrissa', '1980-03-18', 'mheskins3@booking.com');`
`insert into employee (id, name, birthday, email) values (5, 'Demetra', '1956-11-27', 'dcresswell4@alexa.com');`
`insert into employee (id, name, birthday, email) values (6, 'Jesus', '1953-05-25', 'jatwel5@slideshare.net');`
`insert into employee (id, name, birthday, email) values (7, 'Morgen', '1955-09-23', 'mbolderson6@amazon.com');`
`insert into employee (id, name, birthday, email) values (8, 'Amie', '1974-07-28', 'amontez7@elegantthemes.com');`
`insert into employee (id, name, birthday, email) values (9, 'Floris', '1991-12-01', 'fcorradeschi8@economist.com');`
`insert into employee (id, name, birthday, email) values (10, 'Eric', '1963-02-20', 'ebegg9@mozilla.com');`
`insert into employee (id, name, birthday, email) values (11, 'Odelia', '1972-10-23', 'oadkina@addthis.com');`
`insert into employee (id, name, birthday, email) values (12, 'Ashia', '1992-08-26', 'aklessb@eventbrite.com');`
`insert into employee (id, name, birthday, email) values (13, 'Tedie', '1965-08-18', 'tkrugmannc@washingtonpost.com');`
`insert into employee (id, name, birthday, email) values (14, 'Les', '1996-10-15', 'lphippd@spotify.com');`
`insert into employee (id, name, birthday, email) values (15, 'Fonz', '1970-11-01', 'fcutforde@delicious.com');`
`insert into employee (id, name, birthday, email) values (16, 'Elisabet', '1955-07-10', 'eschefflerf@cyberchimps.com');`
`insert into employee (id, name, birthday, email) values (17, 'Alasdair', '1962-04-07', 'aellerayg@sakura.ne.jp');`
`insert into employee (id, name, birthday, email) values (18, 'Gordan', '1972-07-22', 'gslaymakerh@hostgator.com');`
`insert into employee (id, name, birthday, email) values (19, 'Radcliffe', '1960-10-13', 'rmatelyunasi@exblog.jp');`
`insert into employee (id, name, birthday, email) values (20, 'Franny', '1972-07-09', 'fospellisseyj@chicagotribune.com');`
`insert into employee (id, name, birthday, email) values (21, 'Reuven', '1980-02-01', 'rhackeyk@php.net');`
`insert into employee (id, name, birthday, email) values (22, 'Rodney', '1972-04-20', 'rclubbl@topsy.com');`
`insert into employee (id, name, birthday, email) values (23, 'Stepha', '1975-10-25', 'sbrickdalem@domainmarket.com');`
`insert into employee (id, name, birthday, email) values (24, 'Aaren', '1956-12-31', 'aalpesn@berkeley.edu');`
`insert into employee (id, name, birthday, email) values (25, 'Heall', '1969-03-27', 'hmuggletono@123-reg.co.uk');`
`insert into employee (id, name, birthday, email) values (26, 'Siusan', '1979-01-30', 'sheimsp@vinaora.com');`
`insert into employee (id, name, birthday, email) values (27, 'Sybil', '1968-12-21', 'sblodgetq@t-online.de');`
`insert into employee (id, name, birthday, email) values (28, 'Robinson', '1954-02-25', 'raloshechkinr@scientificamerican.com');`
`insert into employee (id, name, birthday, email) values (29, 'Benn', '1975-02-12', 'bmoorruds@cnbc.com');`
`insert into employee (id, name, birthday, email) values (30, 'Farris', '1972-12-16', 'fmalimt@sitemeter.com');`
`insert into employee (id, name, birthday, email) values (31, 'Muire', '1994-07-10', 'mandriolettiu@simplemachines.org');`
`insert into employee (id, name, birthday, email) values (32, 'Daven', '1964-01-17', 'dlegganv@oracle.com');`
`insert into employee (id, name, birthday, email) values (33, 'Padraic', '1998-03-27', 'pbloanw@businessweek.com');`
`insert into employee (id, name, birthday, email) values (34, 'Lorianna', '1951-06-11', 'lpumfreyx@t-online.de');`
`insert into employee (id, name, birthday, email) values (35, 'Iorgo', '1975-07-24', 'ibenedyktowiczy@altervista.org');`
`insert into employee (id, name, birthday, email) values (36, 'Sallyann', '1955-05-31', 'sdearmanz@discuz.net');`
`insert into employee (id, name, birthday, email) values (37, 'Sherm', '1950-11-01', 'sdunrige10@ca.gov');`
`insert into employee (id, name, birthday, email) values (38, 'Morey', '1971-02-02', 'moakenfield11@boston.com');`
`insert into employee (id, name, birthday, email) values (39, 'Olin', '1964-10-03', 'omcilhagga12@tumblr.com');`
`insert into employee (id, name, birthday, email) values (40, 'Aylmar', '1961-11-10', 'atoombs13@phoca.cz');`
`insert into employee (id, name, birthday, email) values (41, 'Olga', '1999-06-26', 'ovanleijs14@foxnews.com');`
`insert into employee (id, name, birthday, email) values (42, 'Claudie', '1969-11-29', 'ctolson15@usda.gov');`
`insert into employee (id, name, birthday, email) values (43, 'Mathe', '1952-06-22', 'mskells16@google.it');`
`insert into employee (id, name, birthday, email) values (44, 'Tessy', '1973-12-31', 'tskough17@google.com.hk');`
`insert into employee (id, name, birthday, email) values (44, 'Tessy', '1973-12-31', 'tskough17@google.com.hk');`
`insert into employee (id, name, birthday, email) values (45, 'Onida', '1996-04-22', 'orosendale18@bluehost.com');`
`insert into employee (id, name, birthday, email) values (46, 'Lynnett', '1972-08-15', 'lbackes19@telegraph.co.uk');`
`insert into employee (id, name, birthday, email) values (47, 'Kelli', '1994-10-21', 'kcocker1a@arstechnica.com');`
`insert into employee (id, name, birthday, email) values (48, 'Mirabel', '1985-02-01', 'mdrury1b@google.com');`
`insert into employee (id, name, birthday, email) values (49, 'Thorin', '1953-11-07', 'toven1c@smugmug.com');`
`insert into employee (id, name, birthday, email) values (50, 'Porter', '1961-12-12', 'pmcsorley1d@qq.com');`

**3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.**

-- ismi Marrissa olan satirdaki bilgileri yenile.
`UPDATE employee` 
`SET name     = 'Zeynep',`
	    `birthday = '1992-10-04',`
	    `email    = 'zeynep92@gmail.com'`
`WHERE id =1;`

-- ismi Marrissa olan satirdaki bilgileri yenile.
`UPDATE employee` 
`SET name     = 'Zeynep',`
	    `email    = 'zeynep92@gmail.com',`
	    `birthday = '1992-10-04'`
`WHERE name = 'Marrissa';`

-- listeki son 5 kisinin dogum  tarihini 1111-11-11 haline getir ve email adreslerini gizle.
`UPDATE employee` 
`SET birthday = '1111-11-11',`
	    `email    = 'XXXXX'`
`WHERE id >45;`

-- ismi Demetra olan kisinin satirindeki email adresini guncelle.
`UPDATE employee` 
`SET email    = 'bir_demetray_ımben@tcdd.com'`
`WHERE name   = 'Demetra';`

-- '1954-02-25' dogum tarihli kisinin verilerini guncelle.
`UPDATE employee`  
`SET name     = 'Veli',`
	    `email    = 'veli_akman@gmail.com'`
`WHERE birthday = '1954-02-25';`

-- 25. id degerine sahip satirdaki ismi guncelle.
`UPDATE employee` 
`SET name = 'Hilal'`
`WHERE id = 25;`

**4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.**

-- id si 9 olan satiri listeden sil.
`DELETE FROM employee` 
`WHERE id = 9;`

-- email i icinde 3 adet e bulunan satirlari listeden sil.
`DELETE FROM employee` 
`WHERE email LIKE '%e%e%e%';`

-- 1955 den once doganlari listeden sil.
`DELETE FROM employee`  
`WHERE birthday BETWEEN '1955-01-01' AND '1965-01-01'; `

-- .com ile biten email leri listeden sil.
`DELETE FROM employee` 
`WHERE email ILIKE '%.COM';`

-- Kurt,Reuven, Aylmar, Tessy ve Claudie isimlerine sahip satirlari sil.
`DELETE FROM employee `
`WHERE name IN ('Kurt', 'Reuven', 'Aylmar', 'Tessy', 'Claudie');`

## Ödev 9

**1. *city* tablosu ile *country* tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.**

SELECT city.city, country.country FROM city
INNER JOIN country ON country.country_id = city.country_id;


**2. *customer* tablosu ile *payment* tablosunda bulunan *payment_id* ile *customer* tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.**

SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id;


**3. *customer* tablosu ile *rental* tablosunda bulunan *rental_id* ile *customer* tablosundaki *first_name* ve *last_name* isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.**

SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
INNER JOIN customer ON customer.customer_id = rental.customer_id

