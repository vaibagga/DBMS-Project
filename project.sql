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


--Login Table
--
CREATE TABLE Login(
	Login_username VARCHAR(50) , 
	Admin_id INT(50),
	PASSWORD VARCHAR(50) 
);


	
CREATE TABLE ADMIN(
	NAME VARCHAR(50),
	Office_Id  INT(50), 
	Id INT(50),
	Phone_Number INT(50) 
);
	
CREATE TABLE Courier(
	Admin_id VARCHAR(50) PRIMARY KEY,
	Office_id INT(50),dbdbms_labtest
	Shipment_id INT(50),
	Title VARCHAR(50),
	STATUS VARCHAR(50) 
);
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




CREATE TABLE Office(
	OfficeId INT NOT NULL PRIMARY KEY,

);


CREATE TABLE Employees(
	EmployeeId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(20),
	LastName VARCHAR(20),
	MiddleName VARCHAR(20) DEFAULT NULL,
	PhoneNo INT NOT NULL,
	FOREIGN KEY (OfficeId) REFERENCES Office(OfficeId)
);


CREATE TABLE Packages(
	PackageId INT NOT NULL PRIMARY KEY,
	FOREIGN KEY OfficeId REFERENCES Office(OfficeId) ,
	ShipmentId INT NOT NULL,
	Title VARCHAR(30),
	FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
	Type INT
);





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