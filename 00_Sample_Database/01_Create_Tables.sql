/*
====================================================
Sample Database - Create Tables
====================================================
*/

CREATE TABLE Department
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employee
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2),
    DepartmentID INT,
    ManagerID INT NULL,

    FOREIGN KEY (DepartmentID)
    REFERENCES Department(DepartmentID)
);
