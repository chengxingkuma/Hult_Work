select * from clothes;
CREATE TABLE clothes (
clo_id INT(7) NOT NULL AUTO_INCREMENT,
clo_type varchar(45) NOT NULL,
clo_size varchar(45) NOT NULL,
clo_color varchar(45) NOT NULL,
warehouse_id varchar(3) not null,
PRIMARY KEY (clo_id)
);
INSERT INTO clothes
VALUES 
(1000001	,"coat"	,"XL"	,"BLACK",	105	),
(1000002	,"coat"	,"XL"	,"BLACK",	105	),
(1000003	,"coat"	,"L"	,"WHITE",	105	),
(1000004	,"coat"	,"L"	,"BLUE",	105	),
(1000005	,"coat"	,"XL"	,"BLACK",	105	),
(1000006	,"coat"	,"L"	,"BLACK",	105	),
(1000007	,"coat"	,"M"	,"BLACK",	105	),
(1000008	,"coat"	,"M"	,"BLUE",	105	),
(1000009	,"coat"	,"L"	,"WHITE",	105	),
(1000010	,"coat"	,"XL"	,"WHITE",	105	),
(1000011	,"coat"	,"S"	,"BLUE",	105	),
(1000012	,"paints"	,"S"	,"WHITE",	105	),
(1000013	,"paints"	,"M"	,"WHITE",	106	),
(1000014	,"paints"	,"L"	,"BLUE",	106	),
(1000015	,"paints"	,"XL"	,"WHITE",	106	),
(1000016	,"paints"	,"L"	,"WHITE",	106	),
(1000017	,"paints"	,"L"	,"WHITE",	106	),
(1000018	,"paints"	,"XL"	,"WHITE",	107	),
(1000019	,"paints"	,"L"	,"BLACK",	107	),
(1000020	,"paints"	,"M"	,"BLACK",	107	),
(1000021	,"T-shirt"	,"M"	,"WHITE",	105	),
(1000022	,"T-shirt"	,"L"	,"BLUE",	105	),
(1000023	,"T-shirt"	,"XL"	,"BLACK",	105	),
(1000024	,"T-shirt"	,"S"	,"BLACK",	105	),
(1000025	,"dress"	,"S"	,"BLACK",	101	),
(1000026	,"dress"	,"M"	,"BLUE",	101	),
(1000027	,"dress"	,"L"	,"WHITE",	101	),
(1000028	,"dress"	,"XL"	,"BLUE",	102	),
(1000029	,"dress"	,"L"	,"BLACK",	102	),
(1000030	,"dress"	,"L"	,"BLACK",	102	),
(1000031	,"dress"	,"XL"	,"BLACK",	106	),
(1000032	,"dress"	,"L"	,"BLUE",	106	),
(1000033	,"sweater"	,"M"	,"WHITE",	106	),
(1000034	,"sweater"	,"M"	,"WHITE",	101	),
(1000035	,"sweater"	,"L"	,"BLUE",	101	),
(1000036	,"sweater"	,"XL"	,"WHITE",	101	),
(1000037	,"sweater"	,"S"	,"WHITE",	102	),
(1000038	,"sweater"	,"S"	,"BLUE",	102	),
(1000039	,"sweater"	,"M"	,"WHITE",	103	),
(1000040	,"sweater"	,"M"	,"WHITE",	103	),
(1000041	,"sweater"	,"M"	,"WHITE",	103	),
(1000042	,"sweater"	,"M"	,"BLACK",	103	),
(1000043	,"sweater"	,"M"	,"BLACK",	103	),
(1000044	,"sweater"	,"M"	,"BLACK",	103	);
select * from warehouse;
CREATE TABLE warehouse (
warehouse_id INT(3) NOT NULL AUTO_INCREMENT,
city varchar(45) NOT NULL,
phone varchar(45) NOT NULL,
address TEXT NOT NULL,
state varchar(8) not null,
podtalcode varchar(8) not null,
primary key(warehouse_id));
INSERT INTO warehouse
VALUES 
(101,"San Francisco",16502194782	,"100 Market St.","CA",	94080),
(102,"Boston",12158370825,"1550 Court Place","MA",12141),
(103,"New York",	12125554000	,"523 East St.","NY",10022),
(108,"New York",	12125554001	,"725 West St.","NY",10022),
(104,"Los Angeles",33147239999,"30 RueJouffroyDabbans","CA",75017),
(109,"Los Angeles",33147234404,"43 RueJouffroyDabbans","CA",75017),
(105,"Chicago",81332245000,"4-1 Kioicho	","IL",	102-8578),
(106,"Seattle",61292642451,"5-11 Wentworth Avenue","WA",32555),
(107,"San Diego",18051221926	,"25 Old Handured St.","CA",25121);

select * from store;
CREATE TABLE store (
store_id INT(3) NOT NULL AUTO_INCREMENT,
city varchar(45) NOT NULL,
phone varchar(45) NOT NULL,
address TEXT NOT NULL,
state varchar(8) not null,
podtalcode varchar(8) not null,
primary key(store_id));
INSERT INTO store
VALUES 
(301,"San Francisco",16512194782	,"123 Market St.","CA",	94080),
(302,"Boston",12158332825,"144 Court Place","MA",12141),
(303,"New York",	12435554000	,"233 East St.","NY",10022),
(304,"Los Angeles",33142239999,"355 RueJouffroyDabbans","CA",75017),
(305,"Chicago",81332333000,"3 Kioicho	","IL",	102-8578),
(306,"Seattle",61333642451,"56 Wentworth Avenue","WA",32555),
(307,"San Diego",18066621926	,"233 Old Handured St.","CA",25121);

select * from transfer;
CREATE TABLE transfer (
clo_id INT(7) NOT NULL NOT NULL,
store_id INT(3) NOT NULL,
warehouse_id INT(3) NOT NULL,
leave_date date null,
arrive_date date  null
);
INSERT INTO transfer
VALUES 
(1000001	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000002	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000003	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000004	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000005	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000006	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000007	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000008	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000009	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000010	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000011	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000012	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000013	,	106	,	303	,"	2020-01-10	","	2020-01-13	"),
(1000014	,	106	,	303	,"	2020-01-10	","	2020-01-13	"),
(1000015	,	106	,	303	,"	2020-01-10	","	2020-01-13	"),
(1000016	,	106	,	303	,"	2020-01-10	","	2020-01-13	"),
(1000017	,	106	,	301	,"	2020-01-10	","	2020-01-13	"),
(1000018	,	107	,	302	,"	2020-01-15	","	2020-01-18	"),
(1000019	,	107	,	302	,"	2020-01-15	","	2020-01-18	"),
(1000020	,	107	,	302	,"	2020-01-15	","	2020-01-18	"),
(1000021	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000022	,	105	,	305	,"	2019-12-30	","	2020-01-02	"),
(1000023	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000024	,	105	,	306	,"	2019-12-30	","	2020-01-02	"),
(1000025	,	101	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000026	,	101	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000027	,	101	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000028	,	102	,	301	,"	2020-01-10	","	2020-01-13	"),
(1000029	,	102	,	302	,"	2020-01-10	","	2020-01-13	"),
(1000030	,	102	,	301	,"	2020-01-10	","	2020-01-13	"),
(1000031	,	106	,	301	,"	2020-01-10	","	2020-01-13	"),
(1000032	,	106	,	302	,"	2020-01-10	","	2020-01-13	"),
(1000033	,	106	,	302	,"	2020-01-10	","	2020-01-13	"),
(1000034	,	101	,	305	,"	2020-01-10	","	2020-01-13	"),
(1000035	,	101	,	305	,"	2020-01-10	","	2020-01-13	"),
(1000036	,	101	,	306	,"	2020-01-10	","	2020-01-13	"),
(1000037	,	102	,	306	,"	2020-01-10	","	2020-01-13	"),
(1000038	,	102	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000039	,	103	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000040	,	103	,	300	,"	2020-01-10	","	2020-01-13	"),
(1000041	,	103	,	301	,"	2020-01-15	","	2020-01-18	"),
(1000042	,	103	,	303	,"	2020-01-15	","	2020-01-18	"),
(1000043	,	103	,	303	,"	2020-01-15	","	2020-01-18	"),
(1000044	,	103	,	301	,"	2020-01-16	","	2020-01-19	");

select * from orders;
CREATE TABLE orders (
order_id int(5) NOT NULL auto_increment,
clo_id int(7) NOT NULL,
price varchar(10) NOT NULL,
trade_date date not null,
shippemnt_id int(7) not null,
sale_rep int(4)  not null,
primary key (order_id)
);
INSERT INTO orders
VALUES 
(	11100	,	1000001	,	50	,"	2020/1/1	",	300001	,	1007	),
(	11101	,	1000002	,	50	,"	2020/1/1	",	300002	,	1007	),
(	11102	,	1000003	,	50	,"	2020/1/1	",	300003	,	1007	),
(	11103	,	1000004	,	50	,"	2020/1/1	",	300004	,	1007	),
(	11104	,	1000005	,	50	,"	2020/1/1	",	300005	,	1007	),
(	11105	,	1000006	,	50	,"	2020/1/1	",	300006	,	1007	),
(	11106	,	1000007	,	50	,"	2020/1/7	",	300007	,	1013	),
(	11107	,	1000008	,	50	,"	2020/1/7	",	300008	,	1013	),
(	11108	,	1000009	,	50	,"	2020/1/9	",	300009	,	1014	),
(	11109	,	1000010	,	40	,"	2020/1/9	",	300010	,	1014	),
(	11110	,	1000011	,	40	,"	2020/1/9	",	300009	,	1014	),
(	11111	,	1000012	,	40	,"	2020/1/9	",	300010	,	1014	),
(	11112	,	1000013	,	40	,"	2020/1/9	",	300004	,	1014	),
(	11113	,	1000014	,	40	,"	2020/1/9	",	300009	,	1014	),
(	11114	,	1000015	,	40	,"	2020/1/9	",	300010	,	1014	),
(	11115	,	1000016	,	40	,"	2020/1/9	",	300001	,	1014	),
(	11116	,	1000017	,	40	,"	2020/1/9	",	300002	,	1014	),
(	11117	,	1000018	,	70	,"	2020/1/9	",	300003	,	1014	),
(	11118	,	1000019	,	70	,"	2020/1/19	",	300004	,	1007	),
(	11119	,	1000020	,	70	,"	2020/1/19	",	300005	,	1007	),
(	11120	,	1000021	,	70	,"	2020/1/19	",	300008	,	1007	),
(	11121	,	1000022	,	70	,"	2020/1/19	",	300001	,	1007	),
(	11122	,	1000023	,	70	,"	2020/1/19	",	300002	,	1007	),
(	11123	,	1000024	,	70	,"	2020/1/19	",	300003	,	1007	),
(	11124	,	1000025	,	70	,"	2020/1/19	",	300004	,	1007	),
(	11125	,	1000026	,	70	,"	2020/1/19	",	300005	,	1007	),
(	11126	,	1000027	,	50	,"	2020/2/1	",	300010	,	1007	),
(	11127	,	1000028	,	50	,"	2020/2/1	",	300010	,	1008	),
(	11128	,	1000029	,	40	,"	2020/2/1	",	300010	,	1008	),
(	11129	,	1000030	,	40	,"	2020/2/1	",	300010	,	1008	),
(	11130	,	1000031	,	70	,"	2020/2/1	",	300010	,	1008	),
(	11131	,	1000032	,	40	,"	2020/2/1	",	300010	,	1008	),
(	11132	,	1000033	,	50	,"	2020/2/1	",	300010	,	1008	),
(	11133	,	1000034	,	60	,"	2020/2/7	",	300010	,	1014	),
(	11134	,	1000035	,	50	,"	2020/2/7	",	300010	,	1014	),
(	11135	,	1000036	,	40	,"	2020/2/7	",	300010	,	1014	),
(	11136	,	1000037	,	60	,"	2020/2/7	",	300010	,	1014	),
(	11137	,	1000038	,	50	,"	2020/2/7	",	300010	,	1014	);

select * from shippments;
CREATE TABLE shippments (
shippment_id int(7) NOT NULL auto_increment,
send_date date not null,
arrive_date date not null,
primary key (shippment_id)
);
INSERT INTO shippments
VALUES 
(	300001	,"	2020-03-01	","	2020-03-04	"),
(	300002	,"	2020-03-02	","	2020-03-05	"),
(	300003	,"	2020-03-03	","	2020-03-06	"),
(	300004	,"	2020-03-03	","	2020-03-06	"),
(	300005	,"	2020-03-03	","	2020-03-06	"),
(	300006	,"	2020-03-03	","	2020-03-06	"),
(	300007	,"	2020-03-07	","	2020-03-10	"),
(	300008	,"	2020-03-07	","	2020-03-10	"),
(	300009	,"	2020-03-08	","	2020-03-11	"),
(	300010	,"	2020-03-09	","	2020-03-12	");

select * from employees;
CREATE TABLE employees (
empl_id int(4) NOT NULL auto_increment,
firstname varchar(45) NOT NULL,
lastname varchar(45) NOT NULL,
store_id int(3) not null,
job_title varchar(45),
primary key (empl_id)
);
INSERT INTO employees
VALUES 
(	1000	,"	Murphy	","	Diane	",	301	,"	VP Sales	"),
(	1001	,"	Patterson	","	Mary	",	301	,"	VP Marketing	"),
(	1002	,"	Firrelli	","	Jeff	",	300	,"	Sales Manager	"),
(	1003	,"	Bondur	","	William	",	301	,"	Sales Manager	"),
(	1004	,"	Bow	","	Gerard	",	302	,"	Sales Manager	"),
(	1005	,"	Jennings	","	Anthony	",	303	,"	Sales Rep	"),
(	1006	,"	Thompson	","	Leslie	",	304	,"	Sales Rep	"),
(	1007	,"	Max	","	Mak	",	305	,"	Sales Rep	"),
(	1008	,"	Micheal	","	Julie	",	306	,"	Sales Rep	"),
(	1009	,"	Tseng	","	Steve	",	300	,"	Sales Rep	"),
(	1010	,"	Vanauf	","	Micky	",	301	,"	Sales Rep	"),
(	1011	,"	Herry	","	Potter	",	302	,"	Sales Rep	"),
(	1012	,"	Ron	","	Ron	",	303	,"	Sales Rep	"),
(	1013	,"	Fu 	","	Yu	",	304	,"	Sales Rep	"),
(	1014	,"	Granger	","	Hermione	",	305	,"	Sales Rep	"),
(	1015	,"	Petty	","	John	",	306	,"	Sales Rep	"),
(	1016	,"	Brunce	","	Ben	",	300	,"	Sales Rep	"),
(	1017	,"	King	","	George	",	301	,"	Sales Rep	"),
(	1018	,"	Joe	","	Loui	",	302	,"	Sales Rep	"),
(	1019	,"	Ginny	","	Larry	",	303	,"	Sales Rep	"),
(	1020	,"	Marsh	","	Barry	",	304	,"	Sales Rep	");

select * from members;
CREATE TABLE members (
member_id int(3) NOT NULL auto_increment,
contactfirstname varchar(45) NOT NULL,
contactlastname varchar(45) NOT NULL,
phone varchar(45) not null,
adrress varchar(45)not null,
city varchar(45) NOT NULL,
podtalcode varchar(8) not null,
salesRep_no int(4) not null,
primary key (member_id)
);
INSERT INTO members
VALUES 
(	101	,"	Gold VIP	","	Jean	",	6173993838	,"	54 rue Royale	","	San Francisco	",	94080	,	1007	),
(	102	,"	Silver VIP	","	Peter	",	7025551838	,"	60 strong St	","	Boston	",	12141	,	1008	),
(	103,"	Silver VIP	","	Carine	",	7895453382	,"	20 Kilda St	","	New York	",	10022	,	1014	),
(	104	,"	Labrue	","	Janine	",	8753125897	,"	99ulFiltrowa St	","		Los Angeles	",	75017	,	1010	),
(	105	,"	Bergulfsen	","	Jonas	",	9613855669	,"	4 rue des Cinquante	","	Chicago	",	102-8578	,	1011	),
(	106	,"	Nelson	","	Susan	",	1047458544	,"	16 Erling Skakkes gate	","	Seattle	",	32555	,	1012	),
(	107	,"	Niki	","	Roland	",	1133531521	,"	50 Skakkes st	","	San Diego	",	25121	,	1013	),
(	108	,"	Keitel	","	Julie	",	1219604498	,"	11 Moralzarzal	","	New York	",	10022	,	1014	),
(	109	,"	Murphy	","	Kwai	",	1305677475	,"	86Erling rue	","	New York	",	10022	,	1014	);

select * from memberorder;
CREATE TABLE memberorder (
order_no int(5) NOT NULL auto_increment,
member_id int(3) NOT NULL,
add_point varchar(10) NOT NULL,
total_point varchar(10) not null,
primary key (order_no)
);
INSERT INTO memberorder
VALUES 
(	11001	,	101	,	50	,	50	),
(	11002	,	101	,	50	,	100	),
(	11003	,	101	,	50	,	150	),
(	11004	,	101	,	50	,	200	),
(	11005	,	101	,	50	,	250	),
(	11006	,	101	,	50	,	300	),
(	11007	,	101	,	50	,	350	),
(	11008	,	101	,	50	,	400	),
(	11009	,	102	,	50	,	50	),
(	11010	,	102	,	40	,	90	),
(	11011	,	102	,	40	,	130	),
(	11012	,	102	,	40	,	170	),
(	11013	,	103	,	60	,	60	),
(	11014	,	103	,	50	,	110	),
(	11015	,	103	,	40	,	150	),
(	11016	,	103	,	60	,	210	),
(	11017	,	103	,	50	,	260	);

-- the pain point parts
-- calculate the total number of specefic clothes
select count(clo_id) from clothes
where clo_size = "XL"
and clo_color = "BLACK"
and clo_type = "coat";

-- find the coat  in each warehouse location and the date they leave
select clo.clo_id,tran.leave_date,ware.city
from clothes clo,transfer tran,warehouse ware
where clo.clo_id = tran.clo_id
and clo.warehouse_id = ware.warehouse_id
and clo.clo_type = "coat";

-- calculate clothes in each store
select count(tran.clo_id) as "clothes number",tran.store_id 
from clothes clo,transfer tran
where clo.clo_id = tran.clo_id
group by tran.store_id
order by tran.store_id;

-- show the each SaleRep's order with name and the order price,order by price from big to small
select concat("",empl.firstname,empl.lastname) as "Sale Rep Name",ord.price,empl.store_id,str.city
from employees empl,orders ord ,store str
where empl.empl_id = ord.sale_rep
and empl.store_id = str.store_id
order by ord.price desc;

-- caculate each SaleRep's Sale.
select concat("",empl.firstname,empl.lastname) as "Sale Rep Name", sum(ord.price) as "tatal sale"
from employees empl,orders ord
where empl.empl_id = ord.sale_rep
group by empl.empl_id;

-- find the order/shippment number and expected arrive time that not shipped yet
select ord.order_id, shi.shippment_id,shi.arrive_date
from orders ord, shippments shi
where shi.arrive_date <= curdate();

-- find the member name whose podtal code is 10022 and the SalesRep relate to him 

select concat_ws("", mem.contactfirstname, mem.contactlastname) as "member name", 
concat_ws("",empl.lastname,empl.firstname) as "Sales Rep Name"
from employees empl, members mem
where mem.salesRep_no = empl.empl_id
and mem.podtalcode = 10022;

-- find all of the Jean's orders and each points added

select mo.order_no, mo.add_point
from memberorder mo,members mem
where mo.member_id = mem.member_id
and mem.contactlastname like "%Jean%";

call member_point(101,11001);
select add_point from memberorder
where order_no =11001;

call update_member_names(101);

select *
from members;
