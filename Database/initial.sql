CREATE DATABASE CourierManagementSystem;

USE CourierManagementSystem;



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

CREATE TABLE Customers(
	CustomerId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20) DEFAULT NULL,
	PhoneNo INT NOT NULL,
	AddressLine1 VARCHAR(30),
	AddressLine2 VARCHAR(30),
	AddressLine3 VARCHAR(30),
	ZipCode INT NOT NULL;
	Email VARCHAR(30)
);

--Admin Login Table
--1. AdminUsername:  
--2. Password: 


CREATE TABLE AdminLogin(
	AdminUsername INT(50) PRIMARY KEY,
	FOREIGN KEY AdminId REFERENCES Admin
	Password VARCHAR(50) 
);


--Customer Login Table
--1. CustomerUsername: Username for customer
--2. Password: Password for login 

CREATE TABLE CustomerLogin(
	CustomerUsername VARCHAR(50),
	FOREIGN KEY CustomerId REFERENCES Customers(CustomerId),
	Passord VARCHAR(50)
);


--Records of administrators
--1. Name
--2. Id
--3. PhoneNumber
	
CREATE TABLE Admin(
	FOREIGN KEY LoginUsername REFERENCES Login(AdminUsername),
	NAME VARCHAR(50),
	OfficeId  INT(50), 
	Id INT(50),
	PhoneNumber INT(50) 
);
	


SELECT * FROM Customers;

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


CREATE TABLE Packages(
	PackageId INT NOT NULL PRIMARY KEY,
	FOREIGN KEY OfficeId REFERENCES Office(OfficeId) ,
	ShipmentId INT NOT NULL,
	Title VARCHAR(30),
	FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
	Type INT
);

--Office table
--1. OfficeId
--2. 
CREATE TABLE Office(
	OfficeId INT NOT NULL PRIMARY KEY,
	AddressLine1  VARCHAR(20),
	AddressLine2 VARCHAR(20),
	AddressLine3 VARCHAR(20),
	ZipCode INT
);


CREATE TABLE Employees(
						EmployeeID INT NOT NULL PRIMARY KEY,
						FirstName VARCHAR(20) NOT NULL,
						LastName VARCHAR(20) NOT NULL,
						MiddleName VARCHAR(20) DEFAULT NULL,
						PhoneNo INT NOT NULL,
						AddressLine1 VARCHAR(30),
						AddressLine2 VARCHAR(30),
						AddressLine3 VARCHAR(30),
						ZipCode INT NOT NULL;
						Email VARCHAR(30)
);

INSERT INTO Customers VALUES(1,"John", "Smith", "K", 2134190142, "House 12", "Privet Drive, Surrey", "London, England", "john@gmail.com");
INSERT INTO Customers VALUES(2,"Joanne", "Smith", "A", 1234563891, "House 12", "Privet Drive, Surrey", "London, England", "joanne@gmail.com");
INSERT INTO Customers VALUES(3,"Juan", "Smith", "K", 9234567890, "House 12", "Privet Drive, Surrey", "London, England", "juan@gmail.com");
INSERT INTO Customers VALUES(4,"Jack", "Smith", "K", 8234567890, "House 12", "Privet Drive, Surrey", "London, England", "jackn@gmail.com");
INSERT INTO Customers VALUES(5,"John", "Wick", "K", 7234567890, "House 12", "Privet Drive, Surrey", "London, England", "johnw@gmail.com");
INSERT INTO Customers VALUES(6,"Harry", "Potter", "J", 6934567890, "House 12", "Privet Drive, Surrey", "London, England", "harryp@gmail.com");
INSERT INTO Customers VALUES(7,"Frank", "Abagnale", "K", 4204567890, "House 12", "Privet Drive, Surrey", "London, England", "frank@gmail.com");
INSERT INTO Customers VALUES(8,"Gandalf", "Grey", "The", 8904567890, "House 12", "Privet Drive, Surrey", "London, England", "gandalf@gmail.com");
INSERT INTO Customers VALUES(9,"Aragorn", "Elessar", "", 2224567890, "House 12", "Privet Drive, Surrey", "London, England", "aragorn@gmail.com");
INSERT INTO Customers VALUES(10,"Frodo", "Baggins", "", 2134567890, "House 12", "Privet Drive, Surrey", "London, England", "frodo@gmail.com");
INSERT INTO Customers VALUES(11,"Ron", "Weasley", "K", 0114567890, "House 12", "Privet Drive, Surrey", "London, England", "weasley6@gmail.com");
INSERT INTO Customers VALUES(12,"Fred", "Weasley", "K", 0124567890, "House 12", "Privet Drive, Surrey", "London, England", "fweasley@gmail.com");
INSERT INTO Customers VALUES(13,"Saruman", "White", "The", 0864567890, "House 12", "Privet Drive, Surrey", "London, England", "saruman@gmail.com");
INSERT INTO Customers VALUES(14,"Sahil", "Sulekhiya", "K", 0424567890, "House 12", "Privet Drive, Surrey", "London, England", "johns@gmail.com");
INSERT INTO Customers VALUES(15,"Frank", "Castle", "K", 1934567890, "House 12", "Privet Drive, Surrey", "London, England", "smith@gmail.com");




INSERT INTO Packages VALUES(428347, 3, 590501, "electronic", 3, 2);
INSERT INTO Packages VALUES(37615, 3, 908401, "clothing", 2, 4);
INSERT INTO Packages VALUES(177986, 4, 451853, "sports", 3, 7);
INSERT INTO Packages VALUES(578670, 1, 584300, "sports", 1, 9);
INSERT INTO Packages VALUES(915709, 3, 299305, "documents", 3, 8);
INSERT INTO Packages VALUES(333974, 3, 938176, "electronic", 2, 10);
INSERT INTO Packages VALUES(503123, 4, 857994, "electronic", 3, 12);
INSERT INTO Packages VALUES(175679, 2, 634608, "sports", 4, 15);
INSERT INTO Packages VALUES(391654, 4, 741631, "sports", 2, 1);
INSERT INTO Packages VALUES(901159, 2, 587192, "clothing", 4, 6);
INSERT INTO Packages VALUES(764265, 4, 143240, "sports", 3, 5);
INSERT INTO Packages VALUES(64906, 3, 820020, "documents", 4);
INSERT INTO Packages VALUES(413481, 4, 618201, "electronic", 3, 9);
INSERT INTO Packages VALUES(735099, 3, 839396, "sports", 3, 13);




















