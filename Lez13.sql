DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    JobTitle NVARCHAR(50),
    Department NVARCHAR(50),
    StartDate DATE,
	Salary DECIMAL (10,2)
);
 
INSERT INTO Employees (FirstName, LastName, Email, JobTitle, Department, StartDate, Salary) VALUES 
('James', 'Smith', 'james.smith@example.com', 'Software Engineer', 'Engineering', '2019-03-01', 150000),
('Maria', 'Garcia', 'maria.garcia@example.com', 'Project Manager', 'Marketing', '2018-06-15', 1400000),
('Robert', 'Johnson', 'robert.johnson@example.com', 'Database Administrator', 'IT', '2017-05-29', 130000),
('Patricia', 'Miller', 'patricia.miller@example.com', 'Product Manager', 'Sales', '2020-02-17', 154000),
('Michael', 'Davis', 'michael.davis@example.com', 'Web Developer', 'Engineering', '2021-08-23', 120000),
('Linda', 'Martinez', 'linda.martinez@example.com', 'Graphic Designer', 'Design', '2016-04-11', 60000),
('Elizabeth', 'Hernandez', 'elizabeth.hernandez@example.com', 'Sales Associate', 'Sales', '2019-07-19', 370000),
('William', 'Brown', 'william.brown@example.com', 'Systems Analyst', 'IT', '2018-09-03', 500000),
('Jennifer', 'Wilson', 'jennifer.wilson@example.com', 'Consultant', 'Customer Service', '2017-12-08', 40000),
('David', 'Anderson', 'david.anderson@example.com', 'Quality Assurance', 'Engineering', '2020-05-01', 780000),
('Susan', 'Thomas', 'susan.thomas@example.com', 'HR Specialist', 'Human Resources', '2018-03-23', 940000),
('Joseph', 'Moore', 'joseph.moore@example.com', 'Finance Analyst', 'Finance', '2019-11-30', 27000),
('Margaret', 'Taylor', 'margaret.taylor@example.com', 'Content Writer', 'Marketing', '2021-01-15', 43000),
('Charles', 'Lee', 'charles.lee@example.com', 'UX Designer', 'Design', '2017-07-09', 67000),
('Christopher', 'Harris', 'christopher.harris@example.com', 'Network Engineer', 'IT', '2018-08-21', 540000),
('Jessica', 'Clark', 'jessica.clark@example.com', 'Social Media Manager', 'Marketing', '2020-06-05', 370000),
('Daniel', 'Lewis', 'daniel.lewis@example.com', 'Business Analyst', 'Business Development', '2019-04-12', 220000),
('Sarah', 'Walker', 'sarah.walker@example.com', 'Recruiter', 'Human Resources', '2021-09-20', 904329),
('Thomas', 'Robinson', 'thomas.robinson@example.com', 'Technical Support', 'Customer Service', '2017-11-13', 10000),
('Nancy', 'Rodriguez', 'nancy.rodriguez@example.com', 'Legal Advisor', 'Legal', '2018-01-29', 870000);

-- Conta tutti 
SELECT COUNT(*) AS  'Totale dipendenti' FROM Employees;

-- Conta tutti i dipendenti raggruppati per dipartimento
SELECT Department, COUNT(*) AS Total
	FROM Employees
	GROUP BY Department
	ORDER BY Total ASC;

-- Media salario
SELECT AVG(Salary)
	FROM Employees;

-- Media per salario per dipartimento
SELECT Department, AVG(Salary) AS 'Media stipendi'
	FROM Employees
	GROUP BY Department;

-- Somma i salari pr dipartimento
SELECT Department, SUM(Salary) AS 'Somma salari'		--
	FROM Employees
	GROUP BY Department;

SELECT Department, MAX(Salary) AS 'Massimo stipendio'
	FROM Employees
	GROUP BY Department;

SELECT Department, MIN(Salary) AS 'Massimo stipendio'
	FROM Employees
	GROUP BY Department;