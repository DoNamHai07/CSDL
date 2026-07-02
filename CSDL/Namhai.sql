CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate)
VALUES (1, 'John', 'Doe', '2024-01-15');

SELECT * FROM Employees;
