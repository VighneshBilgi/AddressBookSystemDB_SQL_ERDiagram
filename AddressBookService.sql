-- UC1: Create AddressBookService Database
create database AddressbookService;
show databases;
use AddressbookService;

-- UC2: create a AddressBook Table with attributes
create table addressBook (firstname varchar(50),lastname varchar(50),address varchar(50),
city varchar(50),state varchar(50),zip varchar(6),phone varchar(12),email varchar(50));

describe addressBook;

-- UC3: Insert new contact
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Vighnesh','Bilgi','HDFC Colony','Pune','Maharashtra','411019',
'9789281907','vhb@gmail.com'), 
('Anoop','Aparajit','Jaitala','Nagpur','Maharashtra','44036','8110020670','aa@yahoo.com'),
('Carl','Pais','Whitefield','Karnataka','Bengaluru','671326','8220584553','cvp@aol.com' );

select * from addressBook;

-- UC4: Edit Contact by name
update addressBook set phone = '9049480396' where firstname = 'Vighnesh';
select * from addressBook;

-- UC5: Delete Contact by name
delete from addressBook where firstname = 'Carl';
select * from addressBook;

-- UC6: Retrieve Person belonging to a City or State
select * from addressBook where city = 'Nagpur';

-- UC7: size/count of address book by City and State
select count(*) from addressBook where state = 'Maharashtra' && city='Pune';

-- UC8: Retrieve entries sorted alphabetically by Person’s name for a given city
select * from addressBook where city = 'Nagpur' order by firstname;

-- UC9: Identify each Address Book with name and Type.
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Uma','Bilgi','Al Garhoud','Dubai','Dubai','00000','0566597229','uma@gmail.com'),
('Abhiram','Reddy','Andhra Pradesh','Nellore','Andhra Pradesh','12345','1773390534','areddy@yahoo.com'),
('Mayur','Bari','Lakkhi Bagh',' Dehradun','Uttarakhand','24800','9357718650','mb@aol.com'),
('Chinmay','Bilgi','HDFC Colony','Pune','Maharashtra','411019','6364503317','chb@aol.com'),
('Debashish','Halder','16850 Collins Ave','Sunny Isles Beach','Florida','33160','30578753970','dh@gmail.com'),
('Harish','K','Nedunchalai Nagar','Salem','Tamil Nadu','636005','04272777222','hk@aol.com');
alter table addressBook add column bookname varchar(25), add column booktype varchar(25);
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Uma';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Abhiram';
update addressBook set bookname='Book3',booktype='Profession' where firstname = 'Mayur';
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Chinmay';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Debashish';
update addressBook set bookname='Book3',booktype='Profession' where firstname = 'Harish';
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Vighnesh';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Anoop';
select * from addressBook;

-- UC10: Count number of persons by type
select count(*) from addressBook where booktype='Family';

-- UC11: Add person to both Friend and Family
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values ('Trishul','Prabakahr','USA','Austin','Texas','78751','5125228222','tp@gmail.com','Book2','Friend'),
('Harish','Bilgi','UAE','Dubai','Dubai','00000','558018701','hb@aol.com','Book1','Family');
select * from addressBook;