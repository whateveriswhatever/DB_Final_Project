CREATE TABLE Contain (
    Order_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,

    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES [Order](ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

/* Data Insertion */
INSERT INTO Contain (Order_ID, Product_ID, Quantity)
VALUES 
    (1, 982278, 2),
    (2, 505608, 1),
    (3, 890126, 3),
    (4, 918160, 1),
    (5, 156192, 4),
    (6, 212517, 2),
    (7, 300076, 1),
    (8, 829357, 2),
    (9, 498098, 1),
    (10, 736184, 3),
    (11, 684475, 1),
    (12, 485324, 2),
    (13, 283222, 1),
    (14, 382806, 2),
    (15, 934488, 1),
    (16, 412892, 3),
    (17, 602475, 2),
    (18, 969837, 1),
    (19, 128121, 2),
    (20, 676858, 1);