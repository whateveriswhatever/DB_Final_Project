CREATE TABLE Employee (
    Employee_ID INT IDENTITY(1, 1) NOT NULL,
    Employee_name VARCHAR(100) NOT NULL,
    Department_ID INT NOT NULL,
    Age INT,
    Gender CHAR,
    Address VARCHAR(100),
    
    PRIMARY KEY (Employee_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);


