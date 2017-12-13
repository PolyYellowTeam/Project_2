USE MASTER
GO
IF EXISTS(SELECT * FROM SYSDATABASES WHERE NAME='Markito') DROP DATABASE Markito
GO

CREATE DATABASE Markito
GO 

USE Markito
GO

set dateformat dmy
go
------------------------------------------ACC
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Accounts')	DROP TABLE Accounts
GO
CREATE TABLE Accounts
(
Username VARCHAR(50) NOT NULL,
Password VARCHAR(32) NOT NULL,
Roles BIT NOT NULL,
Status BIT NOT NULL
CONSTRAINT PK_Acc PRIMARY KEY (Username),
)
------------------------------------------CUSTOMERS
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Customers')	DROP TABLE Customers
GO
CREATE TABLE Customers
(
Customer_id int IDENTITY(1,1),
Username VARCHAR(50) NOT NULL,
Customer_name NVARCHAR(150) NOT NULL,
Gender bit not null,
Birthday Datetime,
Email Varchar(100) Not null,
Phone int,
Customer_Address Nvarchar(250),
CONSTRAINT PK_Cus PRIMARY KEY (Customer_id),
CONSTRAINT FK_Cus_Acc FOREIGN KEY (Username) REFERENCES Accounts(Username)
)
------------------------------------------Employees
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Employees')	DROP TABLE Employees
GO
CREATE TABLE Employees
(
Emp_id INT IDENTITY(1,1),
Username VARCHAR(50),
Fullname NVARCHAR(50) NOT NULL,
Gender NVARCHAR(20),
Home_address NVARCHAR(200),
Email NVARCHAR(50),
Phone CHAR(20),
Roles INT,
Status BIT NOT NULL
CONSTRAINT PK_Employees PRIMARY KEY (Emp_id),
CONSTRAINT FK_Emp_Acc FOREIGN KEY (Username) REFERENCES Accounts(Username)
)
------------------------------------------SUPPLIER
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Suppliers')	DROP TABLE Suppliers
GO
CREATE TABLE Suppliers(
Supplier_id int IDENTITY(1,1),
Supplier_name nvarchar(100) not null,
Su_status bit,
CONSTRAINT PK_Sup PRIMARY KEY (Supplier_id)
)
------------------------------------------CATALOG
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Catalogs')	DROP TABLE Catalogs
GO
CREATE TABLE Catalogs(
Catalog_id VARCHAR(10) NOT NULL,
Catalog_name NVARCHAR(50) NOT NULL,
Catalog_status bit,
CONSTRAINT PK_Catalog PRIMARY KEY (Catalog_id)
)
------------------------------------------CATEGORIES
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Categories')DROP TABLE Categories
GO
CREATE TABLE Categories(
Category_id VARCHAR(10) NOT NULL,
Category_name NVARCHAR(50) NOT NULL,
Catalog_id VARCHAR(10) NOT NULL,
Ca_status bit,
CONSTRAINT PK_Categories PRIMARY KEY (Category_id),
CONSTRAINT FK_Cate_Cata FOREIGN KEY (Catalog_id) REFERENCES Catalogs (Catalog_id)
)
------------------------------------------PRODUCTS
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Products')	DROP TABLE Products
GO
CREATE TABLE Products(
Product_id VARCHAR(10) NOT NULL,
Product_name NVARCHAR(50) NOT NULL,
Category_id varchar(10) NOT NULL,
Supplier_id int NOT NULL,
Quantity INT NOT NULL,
Price money,
picture1 nvarchar(max),
picture2 nvarchar(max),
picture3 nvarchar(max),
Describe nvarchar(max),
Discount int,
Pr_status bit,
CONSTRAINT PK_Product PRIMARY KEY (Product_id),
CONSTRAINT FK_Product_Cate FOREIGN KEY (Category_id) REFERENCES Categories(Category_id),
CONSTRAINT FK_Product_Sup FOREIGN KEY (Supplier_id) REFERENCES Suppliers(Supplier_id),
)

------------------------------------------PAYMENT_METHOD
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'Payment_method') DROP TABLE Payment_method
GO
CREATE TABLE Payment_method
(
Payment_id INT IDENTITY(1,1),
Payment_name NVARCHAR(50) NOT NULL,
Payment_supplier NVARCHAR(100) NOT NULL,
Payment_description NVARCHAR(250),
CONSTRAINT PK_Payment PRIMARY KEY (Payment_id)
)
------------------------------------------CARTS
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Carts')	DROP TABLE Carts
GO
CREATE TABLE Carts
(
Cart_Id INT IDENTITY(1,1),
Emp_id INT,
Customer_id INT,
Cart_date DATETIME NOT NULL,
Cart_total MONEY NOT NULL,
Ship_address NVARCHAR(250) NOT NULL,
Ship_date DATETIME NOT NULL,
Cart_status INT NOT NULL,
Ship_status INT NOT NULL,
Payment_id INT,
CONSTRAINT PK_Carts PRIMARY KEY (Cart_Id),
CONSTRAINT FK_Employees FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id),
CONSTRAINT FK_Customers FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
CONSTRAINT FK_Payment FOREIGN KEY (Payment_id) REFERENCES Payment_method(Payment_id)
)
------------------------------------------CART_DETAILS
IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Cart_Details')	DROP TABLE Cart_Details
GO
CREATE TABLE Cart_Details
(
Cart_details_id INT IDENTITY(1,1),
Cart_id INT,
Product_id VARCHAR(10) NOT NULL,
Quantity INT,
Price MONEY
CONSTRAINT PK_Cart_Details PRIMARY KEY (Cart_details_id),
CONSTRAINT FK_Cart_Details_Product FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
CONSTRAINT FK_Cart_Details_Cart FOREIGN KEY (Cart_id) REFERENCES Carts(Cart_id)
)
------------------------------------------SEO_keywords
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'SEO_keywords') DROP TABLE SEO_keywords
GO
CREATE TABLE SEO_keywords
(
Keyword_id INT IDENTITY(1,1),
Keyword NVARCHAR(500),
CONSTRAINT PK_SEO PRIMARY KEY (Keyword_id)

)
------------------------------------------BANNER

IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Hotkeys')	DROP TABLE Hotkeys
GO
CREATE TABLE Hotkeys(
hotkey_id INT IDENTITY Not null,
hotkey_name varchar(200) Not null,
CONSTRAINT PK_Hotkeys PRIMARY KEY (hotkey_id),
)

IF  EXISTS (SELECT * FROM SYSOBJECTS  WHERE name = 'Banners')	DROP TABLE Banners
GO
CREATE TABLE Banners(
Banner_id INT not null,
Banner_img_url varchar(150),
Banner_name nvarchar(50),
Banner_content nvarchar(500),
Sale_off nvarchar(500),
CONSTRAINT PK_Banners PRIMARY KEY (Banner_id),
)




