CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);


CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    Price DECIMAL(18, 2) NOT NULL,
    StockCount INT NOT NULL,
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Güneþ Kremi', 'Yüksek koruma faktörlü güneþ kremi.', 50.00, 100, 1);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Güneþ Losyonu', 'Nemlendirici özellikli güneþ losyonu.', 60.00, 100, 1);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Yüz Serumu', 'Anti-aging yüz serumu.', 70.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Yüz Kremi', 'Gündüz kullanýmý için yüz kremi.', 45.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Yüz Maskesi', 'Nemlendirici yüz maskesi.', 40.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Vücut Kremi', 'Yoðun nemlendirici vücut kremi.', 35.00, 75, 3);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Vücut Peelingi', 'Cilt yenileyici vücut peelingi.', 30.00, 75, 3);

