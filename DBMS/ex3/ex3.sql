REM ******* CS6312 � DBMS Lab *******
REM ******* Assignment � 3 *******
REM ******* Advanced DML *******


REM ******* Dropping tables *******
drop table item_list;
drop table receipts;
drop table products;
drop table customers;

REM ******* CREATING TABLES *******
REM ***** Creating customers *****
create table customers(
	cid varchar2(10) constraint C_PK primary key,
	lname char(15),
	fname char(15)	
);
desc customers;

REM ***** Adding Entries *****

insert into customers values(1, 'LOGAN', 'JULIET');
insert into customers values(2, 'ARZT', 'TERRELL');
insert into customers values(3, 'ESPOSITA', 'TRAVIS');
insert into customers values(4, 'ENGLEY', 'SIXTA');
insert into customers values(5, 'DUNLOW', 'OSVALDO');
insert into customers values(6, 'SLINGLAND', 'JOSETTE');
insert into customers values(7, 'TOUSSAND', 'SHARRON');
insert into customers values(8, 'HELING', 'RUPERT');
insert into customers values(9, 'HAFFERKAMP', 'CUC');
insert into customers values(10, 'DUKELOW', 'CORETTA');
insert into customers values(11, 'STADICK', 'MIGDALIA');
insert into customers values(12, 'MCMAHAN', 'MELLIE');
insert into customers values(13, 'ARNN', 'KIP');
insert into customers values(14, 'SOPKO', 'RAYFORD');
insert into customers values(15, 'CALLENDAR', 'DAVID');
insert into customers values(16, 'CRUZEN', 'ARIANE');
insert into customers values(17, 'MESDAQ', 'CHARLENE');
insert into customers values(18, 'DOMKOWSKI', 'ALMETA');
insert into customers values(19, 'STENZ', 'NATACHA');
insert into customers values(20, 'ZEME', 'STEPHEN');
insert into customers values(21, 'JOHN', 'DAVID');

REM ***** Creating products *****
 
 create table products(
	pid varchar2(10) constraint P_PK primary key,
	food char(15),
	flavour char(15),
	price number(5)
 );
 
 REM ***** Adding Entries *****
 
 insert into products values('20-BC-C-10','Chocolate','Cake',8.95);
insert into products values('20-BC-L-10','Lemon','Cake',8.95);
insert into products values('20-CA-7.5','Casino','Cake',15.95);
insert into products values('24-8x10','Opera','Cake',15.95);
insert into products values('25-STR-9','Strawberry','Cake',11.95);
insert into products values('26-8x10','Truffle','Cake',15.95);
insert into products values('45-CH','Chocolate','Eclair',3.25);
insert into products values('45-CO','Coffee','Eclair',3.5);
insert into products values('45-VA','Vanilla','Eclair',3.25);
insert into products values('46-11','Napoleon','Cake',13.49);
insert into products values('90-ALM-I','Almond','Tart',3.75);
insert into products values('90-APIE-10','Apple','Pie',5.25);
insert into products values('90-APP-11','Apple','Tart',3.25);
insert into products values('90-APR-PF','Apricot','Tart',3.25);
insert into products values('90-BER-11','Berry','Tart',3.25);
insert into products values('90-BLK-PF','Blackberry','Tart',3.25);
insert into products values('90-BLU-11','Blueberry','Tart',3.25);
insert into products values('90-CH-PF','Chocolate','Tart',3.75);
insert into products values('90-CHR-11','Cherry','Tart',3.25);
insert into products values('90-LEM-11','Lemon','Tart',3.25);
insert into products values('90-PEC-11','Pecan','Tart',3.75);
insert into products values('70-GA','Ganache','Cookie',1.15);
insert into products values('70-GON','Gongolais','Cookie',1.15);
insert into products values('70-R','Raspberry','Cookie',1.09);
insert into products values('70-LEM','Lemon','Cookie',0.79);
insert into products values('70-M-CH-DZ','Chocolate','Meringue',1.25);
insert into products values('70-M-VA-SM-DZ','Vanilla','Meringue',1.15);
insert into products values('70-MAR','Marzipan','Cookie',1.25);
insert into products values('70-TU','Tuile','Cookie',1.25);
insert into products values('70-W','Walnut','Cookie',0.79);
insert into products values('50-ALM','Almond','Croissant',1.45);
insert into products values('50-APP','Apple','Croissant',1.45);
insert into products values('50-APR','Apricot','Croissant',1.45);
insert into products values('50-CHS','Cheese','Croissant',1.75);
insert into products values('50-CH','Chocolate','Croissant',1.75);
insert into products values('51-APR','Apricot','Danish',1.15);
insert into products values('51-APP','Apple','Danish',1.15);
insert into products values('51-ATW','Almond','Twist',1.15);
insert into products values('51-BC','Almond','Bear Claw',1.95);
insert into products values('51-BLU','Blueberry','Danish',1.15);

REM ***** Creating reciepts *****

create table receipts(
	rno varchar2(10) constraint R_PK primary key,
	rdate date,
	cid varchar2(10) constraint R_FK references customers(cid)
);

REM ***** Adding Entries *****


insert into receipts values(18129, '28-Oct-2007', 15);
insert into receipts values(51991, '17-Oct-2007', 14);
insert into receipts values(83085, '12-Oct-2007', 7);
insert into receipts values(70723, '28-Oct-2007', 20);
insert into receipts values(13355, '19-Oct-2007', 7);
insert into receipts values(52761, '27-Oct-2007', 8);
insert into receipts values(99002, '13-Oct-2007', 20);
insert into receipts values(58770, '22-Oct-2007', 18);
insert into receipts values(84665, '10-Oct-2007', 6);
insert into receipts values(55944, '16-Oct-2007', 19);
insert into receipts values(42166, '14-Oct-2007', 8);
insert into receipts values(16034, '10-Oct-2007', 4);
insert into receipts values(25906, '29-Oct-2007', 15);
insert into receipts values(27741, '25-Oct-2007', 8);
insert into receipts values(64451, '10-Oct-2007', 11);
insert into receipts values(41028, '6-Oct-2007', 17);
insert into receipts values(73716, '29-Oct-2007', 18);
insert into receipts values(76667, '14-Oct-2007', 15);
insert into receipts values(21040, '3-Oct-2007', 6);
insert into receipts values(48332, '15-Oct-2007', 20);
insert into receipts values(35011, '10-Oct-2007', 20);
insert into receipts values(95962, '26-Oct-2007', 8);
insert into receipts values(44798, '4-Oct-2007', 16);
insert into receipts values(60270, '31-Oct-2007', 11);
insert into receipts values(21162, '4-Oct-2007', 8);
insert into receipts values(77406, '9-Oct-2007', 13);
insert into receipts values(32565, '24-Oct-2007', 14);
insert into receipts values(36343, '31-Oct-2007', 19);
insert into receipts values(96619, '7-Oct-2007', 18);
insert into receipts values(86678, '24-Oct-2007', 3);
insert into receipts values(44330, '20-Oct-2007', 18);
insert into receipts values(91937, '21-Oct-2007', 12);
insert into receipts values(21545, '22-Oct-2007', 12);
insert into receipts values(29226, '26-Oct-2007', 14);
insert into receipts values(25121, '20-Oct-2007', 18);
insert into receipts values(54935, '16-Oct-2007', 14);
insert into receipts values(36423, '24-Oct-2007', 16);
insert into receipts values(83437, '15-Oct-2007', 8);
insert into receipts values(49854, '12-Oct-2007', 2);
insert into receipts values(99994, '21-Oct-2007', 6);
insert into receipts values(21622, '10-Oct-2007', 7);
insert into receipts values(64861, '15-Oct-2007', 10);
insert into receipts values(33456, '5-Oct-2007', 16);
insert into receipts values(75468, '21-Oct-2007', 10);
insert into receipts values(56365, '14-Oct-2007', 12);
insert into receipts values(91192, '10-Oct-2007', 5);
insert into receipts values(82056, '7-Oct-2007', 18);
insert into receipts values(27192, '28-Oct-2007', 9);
insert into receipts values(59716, '30-Oct-2007', 2);
insert into receipts values(82795, '8-Oct-2007', 15);
insert into receipts values(26240, '7-Oct-2007', 16);
insert into receipts values(56724, '9-Oct-2007', 13);
insert into receipts values(70796, '31-Oct-2007', 12);
insert into receipts values(37636, '20-Oct-2007', 1);
insert into receipts values(63998, '13-Oct-2007', 20);
insert into receipts values(48981, '24-Oct-2007', 20);
insert into receipts values(66704, '29-Oct-2007', 14);
insert into receipts values(12698, '23-Oct-2007', 19);
insert into receipts values(79287, '30-Oct-2007', 8);
insert into receipts values(55690, '15-Oct-2007', 19);
insert into receipts values(94371, '22-Oct-2007', 8);
insert into receipts values(26148, '19-Oct-2007', 20);
insert into receipts values(11923, '9-Oct-2007', 15);
insert into receipts values(46598, '3-Oct-2007', 14);
insert into receipts values(76951, '27-Oct-2007', 14);
insert into receipts values(85858, '31-Oct-2007', 1);
insert into receipts values(85881, '13-Oct-2007', 1);
insert into receipts values(89937, '20-Oct-2007', 7);
insert into receipts values(66227, '10-Oct-2007', 1);
insert into receipts values(60240, '17-Oct-2007', 17);
insert into receipts values(86085, '16-Oct-2007', 1);
insert into receipts values(67314, '23-Oct-2007', 6);
insert into receipts values(10013, '17-Oct-2007', 15);
insert into receipts values(26741, '24-Oct-2007', 7);
insert into receipts values(38157, '23-Oct-2007', 16);
insert into receipts values(45873, '5-Oct-2007', 13);
insert into receipts values(37540, '3-Oct-2007', 20);
insert into receipts values(11891, '30-Oct-2007', 7);
insert into receipts values(61797, '30-Oct-2007', 8);
insert into receipts values(52369, '15-Oct-2007', 5);
insert into receipts values(96430, '4-Oct-2007', 18);
insert into receipts values(64301, '12-Oct-2007', 14);
insert into receipts values(45976, '3-Oct-2007', 10);
insert into receipts values(39605, '12-Oct-2007', 12);
insert into receipts values(52013, '5-Oct-2007', 13);
insert into receipts values(88626, '25-Oct-2007', 17);
insert into receipts values(53376, '30-Oct-2007', 8);
insert into receipts values(15584, '13-Oct-2007', 3);
insert into receipts values(73437, '1-Oct-2007', 6);
insert into receipts values(24200, '16-Oct-2007', 9);
insert into receipts values(92252, '25-Oct-2007', 7);
insert into receipts values(39685, '28-Oct-2007', 1);
insert into receipts values(61378, '8-Oct-2007', 11);
insert into receipts values(96761, '14-Oct-2007', 20);
insert into receipts values(26198, '12-Oct-2007', 11);
insert into receipts values(78179, '24-Oct-2007', 14);
insert into receipts values(68890, '27-Oct-2007', 7);
insert into receipts values(75526, '22-Oct-2007', 18);
insert into receipts values(86162, '10-Oct-2007', 16);
insert into receipts values(13496, '30-Oct-2007', 11);
insert into receipts values(60469, '20-Oct-2007', 4);
insert into receipts values(50660, '18-Oct-2007', 9);
insert into receipts values(64553, '8-Oct-2007', 17);
insert into receipts values(57784, '15-Oct-2007', 7);
insert into receipts values(84258, '22-Oct-2007', 2);
insert into receipts values(68199, '4-Oct-2007', 9);
insert into receipts values(78187, '17-Oct-2007', 14);
insert into receipts values(81517, '10-Oct-2007', 1);
insert into receipts values(18951, '14-Oct-2007', 20);
insert into receipts values(20411, '8-Oct-2007', 7);
insert into receipts values(55494, '20-Oct-2007', 15);
insert into receipts values(42162, '16-Oct-2007', 7);
insert into receipts values(49977, '18-Oct-2007', 3);
insert into receipts values(89638, '7-Oct-2007', 4);
insert into receipts values(73438, '18-Oct-2007', 10);
insert into receipts values(96258, '12-Oct-2007', 8);
insert into receipts values(19258, '25-Oct-2007', 5);
insert into receipts values(12800, '22-Oct-2007', 11);
insert into receipts values(81368, '17-Oct-2007', 19);
insert into receipts values(70655, '6-Oct-2007', 2);
insert into receipts values(19002, '19-Oct-2007', 6);
insert into receipts values(31874, '13-Oct-2007', 2);
insert into receipts values(72207, '15-Oct-2007', 1);
insert into receipts values(65091, '9-Oct-2007', 17);
insert into receipts values(42833, '22-Oct-2007', 3);
insert into receipts values(72949, '2-Oct-2007', 6);
insert into receipts values(46248, '12-Oct-2007', 11);
insert into receipts values(38849, '25-Oct-2007', 1);
insert into receipts values(86861, '26-Oct-2007', 9);
insert into receipts values(32701, '19-Oct-2007', 16);
insert into receipts values(89182, '29-Oct-2007', 5);
insert into receipts values(68753, '11-Oct-2007', 5);
insert into receipts values(39217, '19-Oct-2007', 20);
insert into receipts values(96531, '12-Oct-2007', 8);
insert into receipts values(53922, '13-Oct-2007', 2);
insert into receipts values(64477, '16-Oct-2007', 6);
insert into receipts values(99058, '3-Oct-2007', 14);
insert into receipts values(77032, '28-Oct-2007', 14);
insert into receipts values(15286, '11-Oct-2007', 6);
insert into receipts values(59774, '2-Oct-2007', 16);
insert into receipts values(35073, '23-Oct-2007', 5);
insert into receipts values(34910, '7-Oct-2007', 20);
insert into receipts values(17685, '2-Oct-2007', 12);
insert into receipts values(45062, '23-Oct-2007', 1);
insert into receipts values(39109, '2-Oct-2007', 16);
insert into receipts values(37063, '22-Oct-2007', 14);
insert into receipts values(18567, '13-Oct-2007', 7);
insert into receipts values(37586, '3-Oct-2007', 8);
insert into receipts values(62707, '7-Oct-2007', 8);
insert into receipts values(28117, '9-Oct-2007', 5);
insert into receipts values(64574, '2-Oct-2007', 6);
insert into receipts values(40305, '25-Oct-2007', 8);
insert into receipts values(33060, '29-Oct-2007', 20);
insert into receipts values(12396, '10-Oct-2007', 10);
insert into receipts values(43103, '7-Oct-2007', 4);
insert into receipts values(39575, '20-Oct-2007', 20);
insert into receipts values(70162, '9-Oct-2007', 19);
insert into receipts values(23034, '15-Oct-2007', 17);
insert into receipts values(79296, '3-Oct-2007', 19);
insert into receipts values(74741, '12-Oct-2007', 20);
insert into receipts values(98806, '15-Oct-2007', 17);
insert into receipts values(43752, '5-Oct-2007', 5);
insert into receipts values(47353, '12-Oct-2007', 6);
insert into receipts values(39829, '31-Oct-2007', 3);
insert into receipts values(87454, '21-Oct-2007', 6);
insert into receipts values(76663, '4-Oct-2007', 10);
insert into receipts values(85492, '20-Oct-2007', 12);
insert into receipts values(48647, '9-Oct-2007', 3);
insert into receipts values(61008, '9-Oct-2007', 14);
insert into receipts values(96402, '4-Oct-2007', 6);
insert into receipts values(35904, '21-Oct-2007', 10);
insert into receipts values(49845, '31-Oct-2007', 20);
insert into receipts values(46014, '16-Oct-2007', 15);
insert into receipts values(46876, '6-Oct-2007', 13);
insert into receipts values(34579, '8-Oct-2007', 7);
insert into receipts values(17729, '16-Oct-2007', 16);
insert into receipts values(74952, '16-Oct-2007', 5);
insert into receipts values(61948, '4-Oct-2007', 5);
insert into receipts values(41064, '25-Oct-2007', 16);
insert into receipts values(17947, '27-Oct-2007', 7);
insert into receipts values(17947, '27-Oct-2007', 7);
insert into receipts values(95514, '9-Oct-2007', 10);
insert into receipts values(24829, '7-Oct-2007', 15);
insert into receipts values(44590, '12-Oct-2007', 1);
insert into receipts values(65165, '4-Oct-2007', 4);
insert into receipts values(89588, '9-Oct-2007', 7);
insert into receipts values(53240, '3-Oct-2007', 14);
insert into receipts values(46674, '29-Oct-2007', 15);
insert into receipts values(67946, '18-Oct-2007', 7);
insert into receipts values(31233, '20-Oct-2007', 13);
insert into receipts values(15904, '6-Oct-2007', 13);
insert into receipts values(17488, '20-Oct-2007', 6);
insert into receipts values(97097, '23-Oct-2007', 9);
insert into receipts values(50512, '27-Oct-2007', 8);
insert into receipts values(11548, '21-Oct-2007', 13);
insert into receipts values(29908, '14-Oct-2007', 13);
insert into receipts values(20127, '7-Oct-2007', 15);
insert into receipts values(41963, '29-Oct-2007', 8);
insert into receipts values(16532, '21-Oct-2007', 4);
insert into receipts values(34378, '23-Oct-2007', 6);

REM ***** Creating item_list *****

create table item_list(
	rno varchar2(10) constraint IL_FK references receipts(rno),
	ordinal number(5),
	item varchar2(10) constraint IL2_FK references products(pid),
	constraint I_FK primary key(rno,ordinal) 
);

REM ***** Adding Entries *****

insert into item_list values(18129, 1,  '70-TU');
insert into item_list values(51991, 1,  '90-APIE-10');
insert into item_list values(51991, 2,  '90-CH-PF');
insert into item_list values(51991, 3,  '90-APP-11');
insert into item_list values(51991, 4,  '26-8x10');
insert into item_list values(83085, 1,  '25-STR-9');
insert into item_list values(83085, 2,  '24-8x10');
insert into item_list values(83085, 3,  '90-APR-PF');
insert into item_list values(83085, 4,  '51-ATW');
insert into item_list values(83085, 5,  '26-8x10');
insert into item_list values(70723, 1,  '45-CO');
insert into item_list values(13355, 1,  '24-8x10');
insert into item_list values(13355, 2,  '70-LEM');
insert into item_list values(13355, 3,  '46-11');
insert into item_list values(52761, 1,  '90-ALM-I');
insert into item_list values(52761, 2,  '26-8x10');
insert into item_list values(52761, 3,  '50-CHS');
insert into item_list values(52761, 4,  '90-BLK-PF');
insert into item_list values(52761, 5,  '90-ALM-I');
insert into item_list values(99002, 1,  '50-CHS');
insert into item_list values(99002, 2,  '45-VA');
insert into item_list values(58770, 1,  '50-CHS');
insert into item_list values(58770, 2,  '46-11');
insert into item_list values(58770, 3,  '45-CH');
insert into item_list values(58770, 4,  '20-CA-7.5');
insert into item_list values(84665, 1,  '90-BER-11');
insert into item_list values(55944, 1,  '20-CA-7.5');
insert into item_list values(55944, 2,  '90-LEM-11');
insert into item_list values(55944, 3,  '70-R');
insert into item_list values(55944, 4,  '70-R');
insert into item_list values(55944, 5,  '50-CHS');
insert into item_list values(42166, 1,  '70-M-VA-SM-DZ');
insert into item_list values(16034, 1,  '46-11');
insert into item_list values(16034, 2,  '26-8x10');
insert into item_list values(16034, 3,  '45-CH');
insert into item_list values(16034, 4,  '70-R');
insert into item_list values(16034, 5,  '46-11');
insert into item_list values(25906, 1,  '25-STR-9');
insert into item_list values(27741, 1,  '90-BLK-PF');
insert into item_list values(27741, 2,  '51-BC');
insert into item_list values(27741, 3,  '90-APR-PF');
insert into item_list values(64451, 1,  '90-BER-11');
insert into item_list values(64451, 2,  '51-BC');
insert into item_list values(64451, 3,  '24-8x10');
insert into item_list values(64451, 4,  '90-BLK-PF');
insert into item_list values(41028, 1,  '90-BER-11');
insert into item_list values(73716, 1,  '90-PEC-11');
insert into item_list values(73716, 2,  '90-ALM-I');
insert into item_list values(73716, 3,  '70-LEM');
insert into item_list values(73716, 4,  '50-CH');
insert into item_list values(76667, 1,  '70-GON');
insert into item_list values(76667, 2,  '90-LEM-11');
insert into item_list values(21040, 1,  '70-R');
insert into item_list values(21040, 2,  '20-BC-L-10');
insert into item_list values(21040, 3,  '90-CH-PF');
insert into item_list values(48332, 1,  '70-GA');
insert into item_list values(48332, 2,  '70-R');
insert into item_list values(35011, 1,  '50-CHS');
insert into item_list values(95962, 1,  '90-APR-PF');
insert into item_list values(95962, 2,  '90-CHR-11');
insert into item_list values(95962, 3,  '50-CH');
insert into item_list values(95962, 4,  '45-VA');
insert into item_list values(44798, 1,  '90-APR-PF');
insert into item_list values(44798, 2,  '90-CH-PF');
insert into item_list values(44798, 3,  '90-APIE-10');
insert into item_list values(44798, 4,  '90-APP-11');
insert into item_list values(44798, 5,  '25-STR-9');
insert into item_list values(60270, 1,  '20-BC-L-10');
insert into item_list values(60270, 2,  '90-BLU-11');
insert into item_list values(21162, 1,  '90-APP-11');
insert into item_list values(21162, 2,  '70-TU');
insert into item_list values(21162, 3,  '90-APR-PF');
insert into item_list values(77406, 1,  '51-ATW');
insert into item_list values(77406, 2,  '90-BLK-PF');
insert into item_list values(77406, 3,  '50-APR');
insert into item_list values(77406, 4,  '50-APR');
insert into item_list values(77406, 5,  '24-8x10');
insert into item_list values(32565, 1,  '50-APP');
insert into item_list values(32565, 2,  '50-APP');
insert into item_list values(32565, 3,  '45-VA');
insert into item_list values(36343, 1,  '51-BC');
insert into item_list values(36343, 2,  '51-BC');
insert into item_list values(36343, 3,  '70-M-VA-SM-DZ');
insert into item_list values(36343, 4,  '50-ALM');
insert into item_list values(96619, 1,  '90-BLK-PF');
insert into item_list values(86678, 1,  '70-M-VA-SM-DZ');
insert into item_list values(86678, 2,  '90-LEM-11');
insert into item_list values(44330, 1,  '70-R');
insert into item_list values(44330, 2,  '90-BLU-11');
insert into item_list values(91937, 1,  '51-BC');
insert into item_list values(91937, 2,  '51-APR');
insert into item_list values(21545, 1,  '90-BER-11');
insert into item_list values(21545, 2,  '70-GA');
insert into item_list values(21545, 3,  '50-ALM');
insert into item_list values(21545, 4,  '90-BER-11');
insert into item_list values(21545, 5,  '45-VA');
insert into item_list values(29226, 1,  '90-PEC-11');
insert into item_list values(29226, 2,  '90-APIE-10');
insert into item_list values(29226, 3,  '51-BC');
insert into item_list values(29226, 4,  '70-W');
insert into item_list values(29226, 5,  '50-ALM');
insert into item_list values(25121, 1,  '50-CHS');
insert into item_list values(25121, 2,  '90-BER-11');
insert into item_list values(25121, 3,  '45-CH');
insert into item_list values(54935, 1,  '70-R');
insert into item_list values(54935, 2,  '45-CH');
insert into item_list values(36423, 1,  '45-VA');
insert into item_list values(83437, 1,  '90-LEM-11');
insert into item_list values(83437, 2,  '51-APR');
insert into item_list values(49854, 1,  '90-BER-11');
insert into item_list values(49854, 2,  '90-APP-11');
insert into item_list values(99994, 1,  '25-STR-9');
insert into item_list values(99994, 2,  '26-8x10');
insert into item_list values(99994, 3,  '90-PEC-11');
insert into item_list values(99994, 4,  '50-CH');
insert into item_list values(21622, 1,  '45-CO');
insert into item_list values(64861, 1,  '50-ALM');
insert into item_list values(64861, 2,  '46-11');
insert into item_list values(33456, 1,  '46-11');
insert into item_list values(33456, 2,  '90-BLK-PF');
insert into item_list values(75468, 1,  '70-M-CH-DZ');
insert into item_list values(75468, 2,  '70-M-CH-DZ');
insert into item_list values(75468, 3,  '90-CHR-11');
insert into item_list values(56365, 1,  '50-APR');
insert into item_list values(91192, 1,  '51-APP');
insert into item_list values(91192, 2,  '51-ATW');
insert into item_list values(91192, 3,  '50-APP');
insert into item_list values(82056, 1,  '90-APP-11');
insert into item_list values(82056, 2,  '50-CH');
insert into item_list values(82056, 3,  '90-BLK-PF');
insert into item_list values(82056, 4,  '45-CO');
insert into item_list values(27192, 1,  '70-R');
insert into item_list values(27192, 2,  '90-BLU-11');
insert into item_list values(27192, 3,  '70-TU');
insert into item_list values(59716, 1,  '51-APR');
insert into item_list values(59716, 2,  '70-MAR');
insert into item_list values(59716, 3,  '90-BLU-11');
insert into item_list values(59716, 4,  '45-CO');
insert into item_list values(59716, 5,  '90-APP-11');
insert into item_list values(82795, 1,  '90-APR-PF');
insert into item_list values(26240, 1,  '20-CA-7.5');
insert into item_list values(56724, 1,  '70-M-VA-SM-DZ');
insert into item_list values(70796, 1,  '45-CO');
insert into item_list values(70796, 2,  '20-BC-L-10');
insert into item_list values(70796, 3,  '45-CH');
insert into item_list values(70796, 4,  '90-BLU-11');
insert into item_list values(37636, 1,  '90-APR-PF');
insert into item_list values(37636, 2,  '90-CH-PF');
insert into item_list values(37636, 3,  '24-8x10');
insert into item_list values(63998, 1,  '70-M-VA-SM-DZ');
insert into item_list values(48981, 1,  '90-CHR-11');
insert into item_list values(48981, 2,  '50-CHS');
insert into item_list values(66704, 1,  '90-BER-11');
insert into item_list values(66704, 2,  '51-APR');
insert into item_list values(66704, 3,  '70-LEM');
insert into item_list values(12698, 1,  '51-APP');
insert into item_list values(12698, 2,  '70-R');
insert into item_list values(12698, 3,  '26-8x10');
insert into item_list values(79287, 1,  '90-PEC-11');
insert into item_list values(79287, 2,  '45-VA');
insert into item_list values(79287, 3,  '90-LEM-11');
insert into item_list values(79287, 4,  '90-APP-11');
insert into item_list values(79287, 5,  '51-BLU');
insert into item_list values(55690, 1,  '70-M-CH-DZ');
insert into item_list values(55690, 2,  '51-BLU');
insert into item_list values(55690, 3,  '90-APP-11');
insert into item_list values(94371, 1,  '51-BLU');
insert into item_list values(26148, 1,  '20-CA-7.5');
insert into item_list values(26148, 2,  '90-BLU-11');
insert into item_list values(26148, 3,  '51-BLU');
insert into item_list values(26148, 4,  '70-M-CH-DZ');
insert into item_list values(11923, 1,  '70-LEM');
insert into item_list values(46598, 1,  '70-R');
insert into item_list values(46598, 2,  '70-W');
insert into item_list values(46598, 3,  '70-R');
insert into item_list values(76951, 1,  '51-BLU');
insert into item_list values(85858, 1,  '20-CA-7.5');
insert into item_list values(85858, 2,  '70-M-VA-SM-DZ');
insert into item_list values(85858, 3,  '51-BLU');
insert into item_list values(85881, 1,  '90-APP-11');
insert into item_list values(89937, 1,  '51-BLU');
insert into item_list values(89937, 2,  '51-BC');
insert into item_list values(89937, 3,  '90-BER-11');
insert into item_list values(89937, 4,  '70-R');
insert into item_list values(66227, 1,  '90-APP-11');
insert into item_list values(66227, 2,  '90-APIE-10');
insert into item_list values(66227, 3,  '70-MAR');
insert into item_list values(66227, 4,  '90-BLK-PF');
insert into item_list values(60240, 1,  '90-APP-11');
insert into item_list values(60240, 2,  '50-ALM');
insert into item_list values(86085, 1,  '50-APR');
insert into item_list values(86085, 2,  '50-APP');
insert into item_list values(86085, 3,  '90-APR-PF');
insert into item_list values(86085, 4,  '51-ATW');
insert into item_list values(67314, 1,  '51-BC');
insert into item_list values(67314, 2,  '50-CHS');
insert into item_list values(67314, 3,  '70-TU');
insert into item_list values(67314, 4,  '20-CA-7.5');
insert into item_list values(10013, 1,  '70-M-CH-DZ');

REM ****** Tables Created *******

REM ****** Questions ******

REM * 1.Display the food details that is not purchased by any of customers.

SELECT * from products
where pid not in (
	select distinct item from item_list
);

REM * 2.Show the customer details who had placed more than 2 orders on the same date.

SELECT * from customers 
where cid in (
	SELECT cid from recipts r 
	group by (r.cid ,r_date)
	having count(*) >1
);

REM * 3. Display the products details that has been ordered maximum by the customers. (use
REM      ALL)

SELECT * from products
where pid in (
	SELECT iten from item_list
	group by item 
	having count(*) >= ALL (
		SELECT count(*) from item_list 
		groupby item
	) 	
);

REM * 4. Show the number of receipts that contain the product whose price is more than the
REM      average price of its food type.

SELECT count(*) from products p1
where price > (
	SELECT avg(price) from products p2
	group by food 
	having p1.food=p2.food 
);

REM * 5. Display the customer details along with receipt number and date for the receipts that
REM      are dated on the last day of the receipt month.

SELECT c.*,r.rno,r.r_name from customer c join recipts r on (c.cid=p.pid)
where (extract(day from r.rdate)=31 and extract (month from r.rdate ))