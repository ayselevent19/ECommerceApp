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

INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('G�ne� Kremi', 'Y�ksek koruma fakt�rl� g�ne� kremi.', 50.00, 100, 1);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('G�ne� Losyonu', 'Nemlendirici �zellikli g�ne� losyonu.', 60.00, 100, 1);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Y�z Serumu', 'Anti-aging y�z serumu.', 70.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Y�z Kremi', 'G�nd�z kullan�m� i�in y�z kremi.', 45.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('Y�z Maskesi', 'Nemlendirici y�z maskesi.', 40.00, 50, 2);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('V�cut Kremi', 'Yo�un nemlendirici v�cut kremi.', 35.00, 75, 3);
INSERT INTO Products (Name, Description, Price, StockCount, CategoryId) VALUES ('V�cut Peelingi', 'Cilt yenileyici v�cut peelingi.', 30.00, 75, 3);

