CREATE DATABASE CourierManagementSystem;

USE CourierManagementSystem;

/*
--Customer Table
--Consists of following fields:
--1. CustomerId: Unique Integer representing Id of each customer
--2. FirstName: First Name of customer
--3. LastName: Last Name of Customer
--4. MiddleName: Middle Name of Customer by default it is NULL
--5. PhoneNo: Phone Number of Customer
--6. AddressLine1: House Number and Street of Customer
--7. AddressLine2: Locality of Customer
--8. ZipCode: Pin Code of Customer
--9. AddressLine3: City of Customer
--10. Email: Email Id of Customer
*/


CREATE TABLE Customers(
	CustomerId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) DEFAULT NULL,
	PhoneNo INT NOT NULL,
	AddressLine1 VARCHAR(30),
	AddressLine2 VARCHAR(30),
	AddressLine3 VARCHAR(30),
	ZipCode INT NOT NULL,
	Email VARCHAR(30)
);



INSERT INTO Customers VALUES(1,"Vaibhav",  "Bagga", "", 123456789, "DTU", "Bawana", "New Delhi", 110039, "vaibagga@gmail.com");
INSERT INTO Customers VALUES(2,"Sahil",  "Sulekhiya", "", 234112414, "DTU", "Bawana", "New Delhi", 110039, "sulekhia@gmail.com");
INSERT INTO Customers VALUES(3,"Suraj",  "Gupta", "", 342497911, "DTU", "Bawana", "New Delhi", 110039, "trojanhack@gmail.com");
INSERT INTO Customers VALUES(4,"Vibhor",  "Saxena", "", 124190987, "DTU", "Bawana", "New Delhi", 110039, "vibhor@gmail.com");
INSERT INTO Customers VALUES(5,"John",  "Smith", "", 1234567219, "124", "Brooklyn", "New York", 11201, "john.smith@gmail.com");
INSERT INTO Customers VALUES(6,"Juan",  "Smith", "", 234112414, "213", "Paschim Vihar", "New Delhi", 110063, "juan@gmail.com");

SELECT * FROM Customers;


CREATE TABLE Office(
	OfficeId INT NOT NULL PRIMARY KEY,
	AddressLine1  VARCHAR(20),
	AddressLine2 VARCHAR(20),
	AddressLine3 VARCHAR(20),
	ZipCode INT
);


INSERT INTO Office VALUES(1, "DTU", "Bawana", "New Delhi", 110039);
INSERT INTO Office VALUES(2, "123" ,"ABC Colony", "New Delhi", 110001);


/*
--Admin Table
--Consists of following fields:
--1. AdminId: Unique Integer representing Id of each Admin
--2. FirstName: First Name of Admin
--3. LastName: Last Name of Admin
--4. MiddleName: Middle Name of Admin by default it is NULL
--5. PhoneNo: Phone Number of Admin
--6. AddressLine1: House Number and Street of Admin
--7. AddressLine2: Locality of Admin
--8. ZipCode: Pin Code of Admin
--9. AddressLine3: City of Admin
--10. Email: Email Id of Admin
--11. OfficeId: Office admin works in 
*/


CREATE TABLE Admin(
	AdminId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) DEFAULT NULL,
	PhoneNo INT NOT NULL,
	AddressLine1 VARCHAR(30),
	AddressLine2 VARCHAR(30),
	AddressLine3 VARCHAR(30),
	ZipCode INT NOT NULL,
	Email VARCHAR(30),
	OfficeId INT,
	FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)
);


INSERT INTO Admin VALUES(1,"John",  "Smith", "K", 123456789, "DTU", "Bawana", "New Delhi", 110039, "john@gmail.com",2);
INSERT INTO Admin VALUES(2,"Juan",  "Smith", "", 234112414, "DTU", "Bawana", "New Delhi", 110039, "juan@gmail.com",1);


/*
--Employee Table
--Consists of following fields:
--1. Employee Id: Unique Integer representing Id of each Employee 
--2. FirstName: First Name of Employee 
--3. LastName: Last Name of Employee 
--4. MiddleName: Middle Name of Employee by default it is NULL
--5. PhoneNo: Phone Number of Employee
--6. AddressLine1: House Number and Street of Employee 
--7. AddressLine2: Locality of Employee 
--8. ZipCode: Pin Code of Employee 
--9. AddressLine3: City of Employee 
--10. Email: Email Id of Employee 
--11. OfficeId: Office Employee  works in 
*/


CREATE TABLE Employees(
	AdminId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) DEFAULT NULL,
	PhoneNo INT NOT NULL,
	AddressLine1 VARCHAR(30),
	AddressLine2 VARCHAR(30),
	AddressLine3 VARCHAR(30),
	ZipCode INT NOT NULL,
	Email VARCHAR(30),
	OfficeId INT,
	FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)
);

INSERT INTO Employees VALUES(1,"Jane",  "Smith", "K", 123456789, "DTU", "Bawana", "New Delhi", 110039, "jane@gmail.com",2);
INSERT INTO Employees VALUES(2,"Jack",  "Smith", "", 234112414, "DTU", "Bawana", "New Delhi", 110039, "juan@gmail.com",1);
INSERT INTO Employees VALUES(3,"Sample",  "Name", "", 342497911, "DTU", "Bawana", "New Delhi", 110039, "sample@gmail.com",1);



/*
--Packages Table
--Consists of following fields:
--1. Id: Unique Id for all packages
--2. OfficeId: Id for Office
--3. LastName: Last Name of Customer
--4. MiddleName: Middle Name of Customer by default it is NULL
--5. PhoneNo: Phone Number of Customer
--6. AddressLine1: House Number and Street of Customer
--7. AddressLine2: Locality of Customer
--8. ZipCode: Pin Code of Customer
--9. AddressLine3: City of Customer
--10. Email: Email Id of Customer
*/


CREATE TABLE Packages(
	PackageId INT NOT NULL PRIMARY KEY,
	ShipmentId INT NOT NULL,
	Title VARCHAR(30),
	CustomerId INT,
	Type INT,
	FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
	OfficeId INT,
	FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)
) ENGINE=INNODB;
 

INSERT INTO Packages VALUES(428347, 590501, "electronic", 3, 2, 1);
INSERT INTO Packages VALUES(37615, 908401, "clothing", 2, 4, 2);
INSERT INTO Packages VALUES(177986, 451853, "sports", 3, 7, 1);


CREATE TABLE Shipment(
	ShipmentId INT PRIMARY KEY,
	FromAddressLine1 VARCHAR(20),
	FromAddressLine2 VARCHAR(20),
	FromAddressLine3 VARCHAR(20),
	ToAddressPin INT,
	ToAddressLine1 VARCHAR(20),
	ToAddressLine2 VARCHAR(20),
	ToAddressLine3 VARCHAR(20),
	ToAddressPin INT,
	Dat VARCHAR(20)
);


INSERT INTO Shipment VALUES(590501, "DTU", "Bawana", "New Delhi", 110039, "123", "ABC Colony", "New Delhi", 110063, '10-03-2019');
INSERT INTO Shipment VALUES(908401, "DTU", "Bawana", "New Delhi", 110039, "123", "ABC Colony", "New Delhi", 110063, '10-03-2019');
INSERT INTO Shipment VALUES(451853, "DTU", "Bawana", "New Delhi", 110039, "123", "ABC Colony", "New Delhi", 110063, '10-03-2019');

/*
--Admin Login Table
--1. AdminUsername: Username for admin
--2. Password: Password for login 
*/


CREATE TABLE AdminLogin(
	AdminUsername VARCHAR(20) PRIMARY KEY,
	AdminId INT,
	FOREIGN KEY (AdminId) REFERENCES Admin(AdminId),
	Password VARCHAR(50) 
)ENGINE = INNODB; 

/*
--Customer Login Table
--1. CustomerUsername: Username for customer
--2. Password: Password for login 
*/

CREATE TABLE CustomerLogin(
	CustomerUsername VARCHAR(50) PRIMARY KEY,
	CustomerId INT,
	FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
	Password VARCHAR(50)
)ENGINE = INNODB;























