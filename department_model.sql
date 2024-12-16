CREATE TABLE Department (
    Department_ID INT IDENTITY(1, 1) NOT NULL, 
    Department_name VARCHAR(100) NOT NULL,
    Description VARCHAR(1000),
    Create_At DATE NOT NULL,

    PRIMARY KEY (Department_ID)
);

/* DATA INSERTION */
INSERT INTO Department (Department_name, Description, Create_At)
VALUES 
    ('Human Resources', 'Human Resources, this department is responsible for recruiting, hiring, training, and developing employees. They also handle employee relations, payroll, and benefits.', '2024-06-03'),
    ('Information Technology (IT)', 'This department is responsible for the company''s s computer systees and networks. They provide technical support to employees, develop new software applications.', '2024-03-11'),
    ('Finance', 'This department is responsible for managing the company''s money. They track income and expenses, prepare budgets, and oversee financial investments.', '2024-02-04'),
    ('Marketing', 'This department is responsible for promiting the company''s products or services to potential customer. They develop marketing campaigns, create advertising materials, and manage the company''s products.', '2024-01-13'),
    ('Operations', 'This department is responsible for the day-to-day operations of the company. . They manage the production of goods or services, ensure that quality standards are set, and keep the company running as it should expected to be.', '2023-11-16'),
    ('Sales', 'This department is responsible for selling the company''s products or services to customers. They develop sales strategies, Identify potential leads, and close deals.', '2024-12-06');