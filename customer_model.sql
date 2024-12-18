CREATE TABLE Customer (
    ID INT IDENTITY(1, 1) NOT NULL, 
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(100) NOT NULL,
    Gender BIT NOT NULL,
    Address VARCHAR(100) NOT NULL,

    PRIMARY KEY (ID)
);

/* DATA INSERTION */
INSERT INTO Customer (Name, Phone, Gender, Address) 
VALUES 
    ('Nguyen Ha Linh', '0901234567', 1, '123 Tran Hung Dao street, Hoan Kiem district, Hanoi'),
    ('Nguyen Ngoc Lan', '0902345678', 1, '456 Le Loi street, Hai Ba Trung district, Hanoi'),
    ('Nguyen Anh Tuan', '0943758491', 0, 'Thai Binh'),
    ('Phan Nam Khanh', '0954375891', 0, 'Ba Dinh district, Hanoi'),
    ('Le Manh Quang', '0924377245', 0, 'unknown'),
    ('Bui Phuong Linh', '0985378953', 1, '1010 Vo Thi Sau street, Thanh Khe district, Da Nang'),
    ('Tran Hoai An', '0982458392', 1, 'Ba Dinh district, Hanoi'),
    ('Đo Trung Tuan', '0981245689', 0, 'Ha Noi'),
    ('Bin Viet Anh', '0987234561', 0, 'Ha Tinh'),
    ('Trinh Van Bach', '0981234788', 1, 'Hai Ba Trung district, Hnoi'),
    ('Bui Thi Hai Linh', '0912348822', 1, '456 Le Loi street, Hai Ba Trung district, Hanoi'),
    ('Nguyen Bich Ngoc', '0988823569', 1, '321 Tran Hung Dao street, Thanh Khe, Da Nang'),
    ('Nguyen Van Dao', '099290121', 0, 'unknown'),
    ('Nguyen Thuy Linh', '0912354891', 1, '69 Tran Hung Dao street, Hoan Kiem district, Hanoi'),
    ('Nguyen Lan Tuong', '0912488129', 1, 'Hoan Kiem district, Hanoi'),
    ('Tran Anh Phuong', '0900129154', 1, '99 Le Loi street, Hai Ba Trung district, Hanoi'),
    ('Pham Ngoc Anh', '0912354488', 1, 'Hanoi'),
    ('Bui Thanh Dat', '0931916683', 0, 'Go Vap district, Ho Chi Minh city'),
    ('Mai Thanh Toan', '0912354448', 0, '42 Mai Hac De street, Hai Ba Trung district, Hanoi'),
    ('Vu Minh Quan', '0935119034', 0, 'Gia Lam district, Hanoi');