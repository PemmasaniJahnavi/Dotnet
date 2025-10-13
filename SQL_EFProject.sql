
create database MoviesDB;

create table Movie
(
MovieId int primary key,
MovieName varchar(20),
Actor varchar(20),
Actress varchar(20),
YOR int
)

select * from Movie

create proc ShowMoviebyId(@id int)
as
select * from Movie m where m.MovieId=@id;

exec ShowMoviebyId 1


CREATE TABLE Customers (
    CustId INT PRIMARY KEY IDENTITY(1,1),
    CustName VARCHAR(100) NOT NULL,
    CAddress VARCHAR(200),
    Email VARCHAR(100)
);

-- Products Table
CREATE TABLE Products (
    PId INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    TotalStock INT NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    CustId INT NOT NULL,
    PId INT NOT NULL,
    OrderDate DATE NOT NULL,
    Qty INT NOT NULL,
    FOREIGN KEY (CustId) REFERENCES Customers(CustId),
    FOREIGN KEY (PId) REFERENCES Products(PId)
);


INSERT INTO Customers (CustName, CAddress, Email) VALUES
('Ravi Kumar', 'Delhi', 'ravi.kumar@gmail.com'),
('Sneha Patel', 'Mumbai', 'sneha.patel@yahoo.com'),
('Arjun Mehta', 'Pune', 'arjun.mehta@gmail.com'),
('Priya Singh', 'Chennai', 'priya.singh@gmail.com'),
('Vikas Sharma', 'Bangalore', 'vikas.sharma@yahoo.com'),
('Neha Verma', 'Kolkata', 'neha.verma@gmail.com'),
('Rahul Joshi', 'Hyderabad', 'rahul.joshi@outlook.com'),
('Kiran Rao', 'Ahmedabad', 'kiran.rao@gmail.com'),
('Deepa Nair', 'Cochin', 'deepa.nair@yahoo.com'),
('Suresh Das', 'Jaipur', 'suresh.das@gmail.com');



INSERT INTO Orders (CustId, PId, OrderDate, Qty) VALUES
(1, 2, '2025-10-01', 1),   -- Ravi bought Laptop
(2, 2, '2025-10-02', 2),   -- Sneha bought Smartphones
(3, 3, '2025-10-03', 1),   -- Arjun bought Headphones
(4, 5, '2025-10-04', 3),   -- Priya bought Mouse
(5, 4, '2025-10-05', 2),   -- Vikas bought Keyboard
(6, 6, '2025-10-06', 1),   -- Neha bought Monitor
(7, 7, '2025-10-07', 1),   -- Rahul bought Tablet
(8, 8, '2025-10-08', 2),   -- Kiran bought Smartwatch
(9, 9, '2025-10-09', 1),   -- Deepa bought Printer
(10, 10, '2025-10-10', 1); -- Suresh bought HDD


INSERT INTO Products (ProductName, Price, TotalStock) VALUES
('Laptop', 55000.00, 40),
('Smartphone', 25000.00, 100),
('Headphones', 3000.00, 150),
('Keyboard', 1200.00, 200),
('Mouse', 800.00, 250),
('Monitor', 12000.00, 80),
('Tablet', 18000.00, 60),
('Smartwatch', 9000.00, 70),
('Printer', 8500.00, 40),
('External HDD', 4500.00, 90);

select * from Customers
select * from Products
select * from Orders







