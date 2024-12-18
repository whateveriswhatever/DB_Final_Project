CREATE TABLE Customer_Products (
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Customer_Address VARCHAR(100),
    Total_Purchased INT NOT NULL,
    Purchased_Date DATETIME,
    Pay_Method VARCHAR(55) NOT NULL,
    Payment_Status BIT NOT NULL,

    PRIMARY KEY (Product_ID, Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer (ID)
);

INSERT INTO Customer_Products 
    (Product_ID, Customer_ID, Customer_Address, Total_Purchased, Purchased_Date, Pay_Method, Payment_Status)
VALUES
    (982278, 1, '123 Tran Hung Dao street, Hoan Kiem district, Hanoi', 2, '2024-04-15 10:30:00', 'Credit Card', 1),
    (505608, 2, '456 Le Loi street, Hai Ba Trung district, Hanoi', 1, '2024-05-01 14:20:00', 'Cash', 1),
    (890126, 3, 'Thai Binh', 3, '2014-01-22 09:45:00', 'Credit Card', 1),
    (918160, 4, 'Ba Dinh district, Hanoi', 1, '2024-06-10 16:10:00', 'Debit Card', 1),
    (156192, 5, 'unknown', 4, '2010-02-28 11:00:00', 'Cash', 1),
    (212517, 2, '456 Le Loi street, Hai Ba Trung district, Hanoi', 2, '2024-04-18 13:40:00', 'Credit Card', 1),
    (300076, 6, '1010 Vo Thi Sau street, Thanh Khe district, Da Nang', 1, '2024-05-05 15:25:00', 'Debit Card', 1),
    (829357, 7, 'Ba Dinh district, Hanoi', 2, '2021-03-12 08:50:00', 'Credit Card', 1),
    (498098, 8, 'Ha Noi', 1, '2019-06-01 17:15:00', 'Cash', 1),
    (736184, 9, 'Ha Tinh', 3, '2011-04-20 12:00:00', 'Credit Card', 1),
    (684475, 10, 'Hai Ba Trung district, Hanoi', 1, '2022-07-15 10:00:00', 'Debit Card', 1),
    (485324, 11, '456 Le Loi street, Hai Ba Trung district, Hanoi', 2, '2023-08-22 14:30:00', 'Credit Card', 1),
    (283222, 12, '321 Tran Hung Dao street, Thanh Khe, Da Nang', 1, '2024-09-10 09:15:00', 'Cash', 1),
    (382806, 13, 'unknown', 2, '2024-10-05 16:45:00', 'Debit Card', 1),
    (934488, 14, '69 Tran Hung Dao street, Hoan Kiem district, Hanoi', 1, '2024-11-20 11:50:00', 'Credit Card', 1),
    (412892, 15, 'Hoan Kiem district, Hanoi', 3, '2024-12-01 13:10:00', 'Cash', 1),
    (602475, 16, '99 Le Loi street, Hai Ba Trung district, Hanoi', 2, '2024-12-05 15:00:00', 'Credit Card', 1),
    (969837, 17, 'Hanoi', 1, '2024-12-10 17:30:00', 'Debit Card', 1),
    (128121, 18, 'Go Vap district, Ho Chi Minh city', 2, '2024-12-15 10:20:00', 'Cash', 1),
    (676858, 19, 'Gia Lam district, Hanoi', 1, '2024-12-16 12:40:00', 'Credit Card', 1);