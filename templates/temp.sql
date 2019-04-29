
USE CMS;

SELECT FirstName, LastName FROM Customers;
SELECT Email FROM Customers WHERE LastName IN ("Smith", "Gupta");
SELECT MIN(CustomerId) FROM Customers;
SELECT MIN(CustomerId) FROM Customers GROUP BY AddressLine3;

SELECT COUNT(AddressLine3), AddressLine3
FROM Customers
GROUP BY AddressLine3
HAVING COUNT(AddressLine3) > 2;

SELECT * FROM Customers
ORDER BY PhoneNo;

CREATE VIEW firstnames AS
SELECT FirstName
FROM Customers; 