REM ******* CS6312 – DBMS Lab *******
REM ******* Assignment – 1 *******
REM ******* DDL for Mail Order Database *******


REM ******* Dropping tables *******
drop table order_details;
drop table orders;
drop table part;
drop table customer;
drop table emp;
drop table pincode;
 


REM ******* CREATING TABLES ******

REM ****** Creating Pincode (pincode) ******
create table pincode(
 pin number(6) constraint pin_pk primary key,
 loc char(20)
);
desc pincode;
REM ****** Inserting into Pincode ****** 
insert into pincode(pin,loc) values(600001,'Chennai Central');
insert into pincode(pin,loc) values(600001,'Not Chennai Central');
insert into pincode(pin,loc) values(600106,'Arumbakkam');
insert into pincode(pin,loc) values(600072,'Avadi');

REM ****** Creating Employee (emp) ******
create table emp(
 emp_no varchar2 (15) constraint emp_pk primary key,
 emp_name char(15),
 dob date,
 pin number(6) constraint emp_fk references pincode(pin),
 constraint emp_format check(emp_no like'E%')
);
desc emp;
REM ****** Inserting into Employee ******
insert into emp(emp_no,emp_name,dob,pin) values('0001','Pratheep','29-dec-1999',600001);
insert into emp(emp_no,emp_name,dob,pin) values('E001','Pratheep','29-dec-1999',600000);
insert into emp(emp_no,emp_name,dob,pin) values('E001','Pratheep','29-dec-1999',600000);
insert into emp(emp_no,emp_name,dob,pin) values('E001','Pratheep','29-dec-1999',600001);
insert into emp(emp_no,emp_name,dob,pin) values('E002','Prathish','21-feb-2000',600072);
insert into emp(emp_no,emp_name,dob,pin) values('E003','Nitin','29-october-1999',600106);


REM ****** Creating Customer (customer) ******
create table customer(
 cust_no varchar2(10) constraint cus_pk primary key,
 cust_name char(15),
 st_name char(15),
 pin number(6) constraint cus_fk references pincode(pin),
 ph_no number(10) constraint ph_un unique,
 dob date,
 constraint c_type check (cust_no like 'C%')
);
desc customer;
REM ****** Inserting into Customer ******
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('0001','Cust1','St1','01-jan-1999',600001,9999999999);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C001','Cust1','St1','01-jan-1999',600000,9999999999);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C001','Cust1','St1','01-jan-1999',600001,9999999999);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C001','Cust1','St4','01-jan-1999',600001,9999999999);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C002','Cust2','St2','02-jan-1999',600072,9999999999);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C003','Cust3','St3','03-jan-1999',600106,9999999997);

REM ****** Creating Part (part)******
create table part(
 p_no varchar2(15) constraint part_pk primary key,
 p_name char(15),
 price number(10) constraint p_par not null,
 qty number(10)
);
desc part;
REM ****** Inserting into Part ******
insert into part(p_no,p_name,qty) values('P001','Part1','10');
insert into part(p_no,p_name,price,qty) values('P001','Part1','1000',10);
insert into part(p_no,p_name,price,qty) values('P001','Part4','1000',10);
insert into part(p_no,p_name,price,qty) values('P002','Part2','2000',10);
insert into part(p_no,p_name,price,qty) values('P003','Part3','3000',10);

REM ****** Creating Orders (orders)******
create table orders(
 o_no varchar2(5) constraint or_pk primary key,
 emp_no varchar2(5) constraint emp_fk1 references emp(emp_no),
 cust_no varchar2(10) constraint cust_fk1 references customer(cust_no),
 rd date,
 sd date,
 constraint rdsd check (rd<sd)
);
desc orders;
REM ****** Inserting into Orders ******
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O001','E000','C001','1-aug-2018','10-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O001','E001','C000','1-aug-2018','10-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O001','E001','C001','10-aug-2018','1-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O001','E001','C001','1-aug-2018','10-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O001','E001','C004','1-aug-2018','10-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O002','E002','C002','2-aug-2018','11-aug-2018');
insert into orders(o_no,emp_no,cust_no,rd,sd) values('O003','E003','C003','3-aug-2018','12-aug-2018');

REM ****** Creating Order-Details (order_details)******
create table order_details(
 o_no varchar2(5) constraint or_fk references orders(o_no),
 p_no varchar2(15) constraint or_fk2 references part(p_no),
 qty number(10) constraint qty0 check (qty>0),
 constraint ord_pk primary key(o_no,p_no)
);
desc order_details;
REM ****** Inserting into Order-Details ******
insert into order_details(o_no,p_no,qty) values('O004','P001',1);
insert into order_details(o_no,p_no,qty) values('O001','P005',1);
insert into order_details(o_no,p_no,qty) values('O002','P002',2);
insert into order_details(o_no,p_no,qty) values('O002','P002',1);
insert into order_details(o_no,p_no,qty) values('O004','P001',0);
insert into order_details(o_no,p_no,qty) values('O003','P003',3);

REM ****** All tables created and values inserted *******

REM ****** Altering Tables ******

REM * Q : 7. It is identified that the following attributes are to be included in respective relations: 
REM          Parts (reorder level), Employees (hiredate)
desc part;
alter table part add reorderlevel number(5);
desc part;

desc emp;
alter table emp add hire_date date;
desc emp;

REM * Q : 8.  The width of a customer name is not adequate for most of the customers.

insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C004','Cust4Morethan10characters','St4','03-jan-1999','600106','9999999996');
alter table customer modify cust_name char(50);
insert into customer(cust_no,cust_name,st_name,dob,pin,ph_no) values('C004','Cust4Morethan10characters','St4','03-jan-1999','600106','9999999996');

REM * Q : 9.  The date­of­birth of a customer can be addressed later / removed from the schema.
desc customer;
alter table customer drop column dob;
desc customer;

REM * Q : 10. An order can not be placed without the receive date.
desc orders;
alter table orders modify rd date constraint ord_ntnull not null;
desc orders;

REM * Q : 11. A customer may cancel an order or ordered part(s) may not be available in a stock. 
REM           Hence on removing the details of the order, ensure that all the corresponding details 
REM           are also deleted.

delete from orderinfo where o_no='O001'; 

alter table order_details drop constraint or_fk;
alter table order_details add constraint or_fk3 foreign key(o_no) references orders(o_no) on delete cascade;


select * from orders;
select * from order_details;
delete from orders where o_no='O001'; 


select * from orders;
select * from order_details;

REM ******* End *******
