CREATE TABLE [Order] (
    ID INT IDENTITY(1, 1) NOT NULL,
    Customer_ID INT NOT NULL,
    Discount DECIMAL(18, 2) NOT NULL,
    Shipping_Method VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer (ID)
);

/* Data Insertion */
INSERT INTO [Order] (Customer_ID, Discount, Shipping_Method)
VALUES 
    (1, 0.10, 'Standard'),
    (2, 0.15, 'Express'),
    (3, 0.00, 'Standard'),
    (4, 0.05, 'Express'),
    (5, 0.20, 'Standard'),
    (6, 0.00, 'Express'),
    (7, 0.12, 'Standard'),
    (8, 0.08, 'Express'),
    (9, 0.00, 'Standar'),
    (10, 0.18, 'Express'),
    (11, 0.10, 'Standard'),
    (12, 0.15, 'Express'),
    (13, 0.00, 'Standard'),
    (14, 0.05, 'Express'),
    (15, 0.20, 'Standard'),
    (16, 0.00, 'Express'),
    (17, 0.12, 'Standard'),
    (18, 0.08, 'Express'),
    (19, 0.00, 'Standard'),
    (20, 0.18, 'Express');