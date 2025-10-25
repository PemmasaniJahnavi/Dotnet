create Database BankProject;

use BankProject;

create table Departments(
DepartmentId varchar(10) primary key ,
DepartmentName varchar(10) unique not null
);

create table Manager(
ManagerId varchar(10) primary key,
ManagerName varchar(20) not null,
PAN varchar(8) unique  not null,
ManagerEmail varchar(20) unique
);

create table Employees(
EmployeeId varchar(10) primary key,
EmployeeName varchar(20) not null,
EmployeeEmail varchar(20) unique,
DepartmentId varchar(10) references Departments(DepartmentId), 
PAN varchar(8) unique not null,
Approval varchar(3) 
);

create table Customers(
CustomerId varchar(10) primary key ,
CustomerName varchar(20) not null,
PhoneNumber varchar(10) unique not null,
CustomerDOB date,
CustomerAddress varchar(100),
CustomerEmail varchar(20) unique,
PAN varchar(8) unique not null,
Approval varchar(3) 
);


create table Accounts(
AccountId varchar(10) primary key,
CustomerId varchar(10) references Customers(CustomerId) ,
CreatedBy int,
OpenDate date,
Closedate date,
AccountStatus varchar(10)
);

create table FixedDeposit(
FDAccountId varchar(10) primary key references Accounts(AccountId),
Customerid varchar(10) references Customers(CustomerId) ,
OpenDate date,
CloseDate date,
Amount decimal(15,2),
ROI decimal(2,2),
MaturityAmount decimal(15,2)
);

create table SavingsAccount(
SBAccountId varchar(10) primary key references Accounts(AccountId) ,
CustomerId varchar(10) references Customers(CustomerId),
Balance decimal(15,2)
);

create table LoanAccount(
LNAccountId varchar(10) primary key references Accounts(AccountId),
CustomerId varchar(10) references Customers(CustomerId) ,
LoanAmount decimal(15,2),
StartDate date,
TimePeriod decimal(2,1),
MonthDuedate int,
Interest decimal(2,2),
TotalPayable decimal(15,2),
DueAmount decimal(15,2)
);

create table SavingsTransaction(
TransactionId  int identity primary key,
SBAccountId varchar(10) references SavingsAccount(SBAccountId),
Amount decimal(15,2),
TransactionType char(1),
TransactionDate date
);

create table LoanTransaction(
TransactionId int identity primary key,
LNAccountId varchar(10) references LoanAccount(LNAccountId) ,
Amount decimal(15,2),
TransactionType varchar(10),
TransactionDate date,
Penality decimal(10,2)
);

create table FDTransaction(
TransactionId int identity primary key,
FDAccountId varchar(10) references FixedDeposit(FDAccountId) ,
TransactionDate date,
TransactionType varchar(10)
);

create table LoginData (
    UserID int identity(1,1) primary key,
    UserName Varchar(20) unique not null,
    UserPassword varchar(255) not null,
    UserRole varchar(10),
    ID varchar(8) not null
);

select * from Departments
insert into Departments values('DEPT01','DEPOSIT'),('DEPT02','LOAN')


insert into Manager values (1,'Vikram','EXWP4312','vicky1998@gmail.com')


select * from Manager
 
select * from customers

select * from employees

select * from LoginData

select * from Accounts

select * from SavingsAccount
select * from SavingsTransaction


select * from FixedDeposit
select * from FDTransaction

select * from LoanAccount
select * from LoanTransaction
