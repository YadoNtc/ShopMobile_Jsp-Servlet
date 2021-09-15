CREATE DATABASE Mobile
GO

USE Mobile
GO

/****** Object:  Table [dbo].[Users]    Script Date: 25/07/2021 2:24:36 SA ******/


CREATE TABLE roles (
	id INT IDENTITY NOT NULL,
	code VARCHAR(50),
	name NVARCHAR(50)
	CONSTRAINT PK_idRoles PRIMARY KEY (id)
)
GO

CREATE TABLE Users(
	id INT IDENTITY NOT NULL,
	userName VARCHAR(50) NULL,
	password VARCHAR(50) NULL,
	fullName NVARCHAR(50) NULL,
	address NVARCHAR(250) NULL,
	email NVARCHAR(50) NULL,
	phone VARCHAR(50) NULL,
	createDate DATETIME NULL,
	roleId INT NOT NULL,
	status BIT NULL,
    CONSTRAINT PK_user  PRIMARY KEY(id),
	CONSTRAINT FK_roleid FOREIGN KEY (roleId) REFERENCES dbo.roles (id)
)
GO

CREATE TABLE Categories(
	id int IDENTITY NOT NULL,
	name nvarchar(250) NULL,
	createdDate datetime NULL,
	createdBy Nvarchar(50),
	modifiedDate DATETIME,
	modifiedBy NVARCHAR(50),
	userId int NOT NULL
	CONSTRAINT PK_Categories PRIMARY KEY(id) 
	CONSTRAINT FK_userId FOREIGN KEY(userId) REFERENCES dbo.Users(id)
)
GO

CREATE TABLE Producer (
	id INT IDENTITY NOT NULL,
	code VARCHAR(50),
	name NVARCHAR(250),
	CONSTRAINT PK_producer PRIMARY KEY(id)
 )
 GO 

CREATE TABLE Products(
	id int IDENTITY NOT NULL,
	name nvarchar(250) NULL,
	code varchar(10) NULL,
	price BIGINT NULL,
	image nvarchar(max) NULL,
	description nvarchar(500) NULL,
	detail NTEXT NULL,
	quantity int NULL,
	createdDate datetime NULL,
	createdBy NVARCHAR(50),
	categoryId INT,
	producerId INT
    CONSTRAINT PK_Products PRIMARY KEY(id),
	CONSTRAINT FK_categoryId FOREIGN KEY(categoryId) REFERENCES dbo.Categories(id),
	CONSTRAINT FK_producerId FOREIGN KEY(producerId) REFERENCES dbo.Producer(id)
 )
 GO

 CREATE TABLE Orders(
	id int IDENTITY(1,1) NOT NULL,
	createdDate datetime NULL,
	shipName NVARCHAR(50),
	shipEmail VARCHAR(100),
	shipMobile VARCHAR(50),
	shipAdress NVARCHAR(50),
	status int,
	userOders INT 
	CONSTRAINT PK_Order PRIMARY KEY (id),
	CONSTRAINT FK_UserOrders FOREIGN KEY (userOders) REFERENCES dbo.Users(id)
)
GO

 CREATE TABLE OrderDetails(
	id INT IDENTITY NOT NULL,
	quantity int NULL,
	price BIGINT NULL,
	discount BIGINT NULL,
	productId int NOT NULL,
	orderId INT NOT NULL
	CONSTRAINT PK_OrderDetail PRIMARY KEY(id),
	CONSTRAINT FK_OrderProducts FOREIGN KEY(productId) REFERENCES dbo.Products(id),
	CONSTRAINT FK_Order FOREIGN KEY(orderId) REFERENCES dbo.Orders (id)
)
GO



