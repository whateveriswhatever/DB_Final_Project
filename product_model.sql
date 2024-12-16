CREATE TABLE Products (
    Product_ID INT NOT NULL,
    Product_Name VARCHAR(100) NOT NULL,
    Price INT NOT NULL,
    Quantity INT NOT NULL,
    Size VARCHAR(20) NOT NULL,

    CHECK (Quantity between 0 and 999999999),
    PRIMARY KEY (Product_ID)
);

/* Data Insertion */
INSERT INTO Products (Product_ID, Product_Name, Price, Quantity, Size)
VALUES 
    (982278, 'LACE BOW COLLAR SHIRT SM00022', 60, 42, 'M'),
    (505608, 'STRAIGHT-LEG PANTS Q40582', 10, 69, 'XL'),
    (890126, '3D FLOWER SLEEVE SHIRT SM01822', 40, 22, 'L'),
    (918160, 'CUT-OUT FLOWER SHIRT SM02052', 30, 31, 'S'),
    (156192, 'BLACK SHORT Q00782', 15, 86, 'XXL'),
    (212517, 'HIGH-WAIST SHORTS Q14062', 8, 19, 'M'),
    (300076, 'PLEATED SKIRT LIZ16382', 20, 17, 'L'),
    (829357, 'DESIGNER SKIRT Z18362', 30, 51, 'S'),
    (498098, 'PENCIL SKIRT Z18366', 28, 22, 'L'),
    (736184, 'CARGO PANT D69696', 12, 42, 'L'),
    (684475, 'PARTY COWL NECK DRESS D20002', 60, 11, 'M'),
    (485324, 'PEPLUM DRESS D01932', 50, 20, 'M'),
    (283222, 'LASER CUT FLOWER DRESS D04012', 66, 17, 'M'),
    (382806, 'DESIGNER EMBELLISHED DRESS D20192', 55, 28, 'S'),
    (934488, 'FLORAL PRINT DRESS D20202', 45, 25, 'M'),
    (412892, 'RUFFLE HEM DRESS D20312', 35, 30, 'S'),
    (602475, 'BUTTON-DOWN SHIRT SM02152', 25, 40, 'L'),
    (969837, 'DENIM JACKET J00182', 70, 15, 'XL'),
    (128121, 'V-NECK SWEATER SW00182', 55, 35, 'M'),
    (676858, 'LEATHER JACKET J00292', 120, 10, 'L');