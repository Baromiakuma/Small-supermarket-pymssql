create database Supermarket
use Supermarket
create table Commodity(
commodity_no varchar(10) primary key,/*��Ʒ���*/
commodity__name varchar(20),/*��Ʒ����*/
commodity__type1 varchar(10),/*��Ʒ����*/
commodity__size varchar(5),/*��Ʒ���*/
commodity__sprice float,/*�ۼ�*/
commodity__mdate datetime,/*��������*/
commodity__edate datetime,/*������*/
commodity__quantity int,/*�������*/
)

insert into Commodity values('0000000001','�����������','����','��',7,'2018-12-23 00:00:00.000','2019-02-04 00:00:00.000,150')

go
CREATE TABLE Cashier(
cashier_no varchar(10) primary key,/*Ա�����*/
cashier_name varchar(10),
cashier_pwd varchar(10),
cashier_sex char(2),
cashier_age int,
cashier_hourse float,
cashier_salary float,
cashier_phone varchar(11),
)


insert into Commodity values('000004','С��','12345678','��',14,'2019 02 03','2019 03 04',10)
insert into Commodity values('000005','С��','12345678','Ů',20.0,'2019 02 10','2019 03 10',100)

go 
create table Purchaser(
purchaser_no varchar(10) primary key,/*Ա�����*/
purchaser_name varchar(10),
purchaser_sex char(2),
purchaser_age int,
purchaser_salary float,
purchaser_phone varchar(11),
purchaser_entrytime datetime,
)

go
create table Stock(
purchaser_no varchar(10),
commodity_no varchar(10),
stock_no varchar(8),
stock_sprice float,
stock_quantity int,
stock_date datetime,
primary key(stock_no),
foreign key(purchaser_no ) references purchaser(purchaser_no ) on delete set null,
foreign key(commodity_no ) references commodity(commodity_no ) on delete set null,
)
go
create table Sell(
cashier_no varchar(10),
commodity_no varchar(10),
sell_no varchar(8),
sell_quantity int,
sell_price float,/*Ӧ�ս��*/
sell_rmoney float,/*ʵ�ս��*/
sell_date datetime,
primary key(sell_no),
foreign key(cashier_no ) references cashier(cashier_no ) on delete set null,
foreign key(commodity_no ) references commodity(commodity_no ) on delete set null,
)


create table Administrator(
admin_no varchar(10),
admin_pwd varchar(10),
admin_name varchar(10),
admin_phone varchar(10),
admin_addres nvarchar(20),
primary key (admin_no)
)


insert into Administrator values('001','123456','¥��С��','110','�����к�������ͬ·6��')

insert into Administrator values('dch','123456','��������','110','�����к�������ͬ·5��')
