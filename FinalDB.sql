--------------------------------------------
-- Drop existing database (if it exist)
--------------------------------------------
DROP DATABASE IF EXISTS Final;
--------------------------------------------
-- 1. Create database
--------------------------------------------
CREATE DATABASE Final;
USE Final;

--------------------------------------------
-- 2. Create the tables 
--------------------------------------------

CREATE TABLE Customers (
    CustomerID   INT          NOT NULL PRIMARY KEY,
    FirstName    VARCHAR(50)  NOT NULL,
    LastName     VARCHAR(50)  NOT NULL,
    Phone        VARCHAR(20)
);

CREATE TABLE Products (
    ProductID    INT           NOT NULL PRIMARY KEY,
    ProductName  VARCHAR(100)  NOT NULL,
    Category     VARCHAR(50),
    Price        DECIMAL(10,2) NOT NULL CHECK (Price >= 0)
);

CREATE TABLE Transactions (
    TransactionID   INT        NOT NULL PRIMARY KEY,
    CustomerID      INT        NOT NULL,
    ProductID       INT        NOT NULL,
    TransactionDate DATE       NOT NULL,
    Quantity        INT        NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID)  REFERENCES Products(ProductID)
);

--------------------------------------------
-- 3. Insert 50 Customers (real names)
--------------------------------------------
INSERT INTO Customers (CustomerID, FirstName, LastName, Phone)
VALUES
  ( 1, 'James',      'Smith',      '555-1001'),
  ( 2, 'Mary',       'Johnson',    '555-1002'),
  ( 3, 'Robert',     'Williams',   '555-1003'),
  ( 4, 'Patricia',   'Brown',      '555-1004'),
  ( 5, 'John',       'Jones',      '555-1005'),
  ( 6, 'Jennifer',   'Miller',     '555-1006'),
  ( 7, 'Michael',    'Davis',      '555-1007'),
  ( 8, 'Linda',      'Garcia',     '555-1008'),
  ( 9, 'David',      'Rodriguez',  '555-1009'),
  (10, 'Susan',      'Wilson',     '555-1010'),
  (11, 'Joseph',     'Martinez',   '555-1011'),
  (12, 'Karen',      'Anderson',   '555-1012'),
  (13, 'Thomas',     'Taylor',     '555-1013'),
  (14, 'Nancy',      'Thomas',     '555-1014'),
  (15, 'Christopher','Hernandez',  '555-1015'),
  (16, 'Lisa',       'Moore',      '555-1016'),
  (17, 'Daniel',     'Martin',     '555-1017'),
  (18, 'Betty',      'Jackson',    '555-1018'),
  (19, 'Paul',       'Thompson',   '555-1019'),
  (20, 'Sandra',     'White',      '555-1020'),
  (21, 'Mark',       'Harris',     '555-1021'),
  (22, 'Donna',      'Clark',      '555-1022'),
  (23, 'Steven',     'Lewis',      '555-1023'),
  (24, 'Carol',      'Robinson',   '555-1024'),
  (25, 'Kenneth',    'Walker',     '555-1025'),
  (26, 'Sarah',      'Young',      '555-1026'),
  (27, 'Edward',     'Allen',      '555-1027'),
  (28, 'Margaret',   'Hall',       '555-1028'),
  (29, 'Brian',      'King',       '555-1029'),
  (30, 'Dorothy',    'Wright',     '555-1030'),
  (31, 'Ronald',     'Lopez',      '555-1031'),
  (32, 'Cynthia',    'Hill',       '555-1032'),
  (33, 'Anthony',    'Scott',      '555-1033'),
  (34, 'Rebecca',    'Green',      '555-1034'),
  (35, 'Kevin',      'Adams',      '555-1035'),
  (36, 'Shirley',    'Baker',      '555-1036'),
  (37, 'Jason',      'Gonzalez',   '555-1037'),
  (38, 'Amy',        'Nelson',     '555-1038'),
  (39, 'George',     'Carter',     '555-1039'),
  (40, 'Brenda',     'Mitchell',   '555-1040'),
  (41, 'Timothy',    'Perez',      '555-1041'),
  (42, 'Kathleen',   'Roberts',    '555-1042'),
  (43, 'Matthew',    'Turner',     '555-1043'),
  (44, 'Pamela',     'Phillips',   '555-1044'),
  (45, 'Gary',       'Campbell',   '555-1045'),
  (46, 'Debra',      'Parker',     '555-1046'),
  (47, 'Nicholas',   'Evans',      '555-1047'),
  (48, 'Carolyn',    'Edwards',    '555-1048'),
  (49, 'Eric',       'Collins',    '555-1049'),
  (50, 'Diane',      'Stewart',    '555-1050');

--------------------------------------------
-- 4. Insert 50 Products
--------------------------------------------
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
  ( 1, 'iPhone 13',          'Smartphone',   699.00),
  ( 2, 'iPhone 14',          'Smartphone',   799.00),
  ( 3, 'Galaxy S21',         'Smartphone',   649.00),
  ( 4, 'Galaxy S22',         'Smartphone',   749.00),
  ( 5, 'Pixel 6',            'Smartphone',   599.00),
  ( 6, 'Pixel 7',            'Smartphone',   699.00),
  ( 7, 'Dell Inspiron',      'Laptop',       499.00),
  ( 8, 'Dell XPS',           'Laptop',       999.00),
  ( 9, 'MacBook Air',        'Laptop',       1099.00),
  (10, 'MacBook Pro',        'Laptop',       1799.00),
  (11, 'HP Pavilion',        'Laptop',       699.00),
  (12, 'HP Spectre',         'Laptop',       1299.00),
  (13, 'Lenovo ThinkPad',    'Laptop',       799.00),
  (14, 'Lenovo IdeaPad',     'Laptop',       599.00),
  (15, 'iPad Air',           'Tablet',       599.00),
  (16, 'iPad Pro',           'Tablet',       799.00),
  (17, 'Galaxy Tab S7',      'Tablet',       499.00),
  (18, 'Galaxy Tab S8',      'Tablet',       649.00),
  (19, 'Kindle Paperwhite',  'E-Reader',     129.00),
  (20, 'Sony Alpha A7',      'Camera',       1399.00),
  (21, 'Canon EOS M50',      'Camera',       579.00),
  (22, 'Nikon D5600',        'Camera',       699.00),
  (23, 'GoPro Hero 10',      'Camera',       399.00),
  (24, 'LG OLED TV 55\"',    'Television',   1299.00),
  (25, 'Samsung QLED 65\"',  'Television',   1499.00),
  (26, 'TCL Roku TV 50\"',   'Television',   399.00),
  (27, 'Amazon Echo',        'Speaker',      99.00),
  (28, 'Google Nest Audio',  'Speaker',      99.00),
  (29, 'Sonos One',          'Speaker',      199.00),
  (30, 'Bose SoundLink',     'Speaker',      129.00),
  (31, 'AirPods Pro',        'Headphones',   249.00),
  (32, 'Sony WH-1000XM4',    'Headphones',   349.00),
  (33, 'Beats Solo3',        'Headphones',   199.00),
  (34, 'Nintendo Switch',    'Console',      299.00),
  (35, 'PlayStation 5',      'Console',      499.00),
  (36, 'Xbox Series X',      'Console',      499.00),
  (37, 'Just Dance 2023',    'Game',         49.00),
  (38, 'FIFA 23',            'Game',         59.00),
  (39, 'Call of Duty: MW2',  'Game',         69.00),
  (40, 'Zelda: BOTW',        'Game',         59.00),
  (41, 'PS5 DualSense Ctrl', 'Accessory',    69.00),
  (42, 'Xbox Wireless Ctrl', 'Accessory',    59.00),
  (43, 'Anker Power Bank',   'Accessory',    39.00),
  (44, 'Logitech MX Master3','Accessory',    99.00),
  (45, 'Razer DeathAdder',   'Accessory',    49.00),
  (46, 'Apple Watch S7',     'Smartwatch',   399.00),
  (47, 'Fitbit Versa 3',     'Smartwatch',   229.00),
  (48, 'Galaxy Watch 4',     'Smartwatch',   249.00),
  (49, 'Garmin Forerunner',  'Smartwatch',   299.00),
  (50, 'Oculus Quest 2',     'VR Headset',   399.00);

--------------------------------------------
-- 5. Insert 60 Transactions
--    (Some customers appear multiple times)
--------------------------------------------
INSERT INTO Transactions (TransactionID, CustomerID, ProductID, TransactionDate, Quantity)
VALUES
  ( 1,  1,  5,  '2024-01-02', 1),
  ( 2,  1,  11, '2024-01-04', 2),
  ( 3,  2,   1, '2024-01-05', 3),
  ( 4,  3,  14, '2024-01-06', 1),
  ( 5,  3,  25, '2024-01-07', 2),
  ( 6,  4,   6, '2024-01-08', 2),
  ( 7,  5,  33, '2024-01-10', 1),
  ( 8,  5,   1, '2024-01-11', 2),
  ( 9,  6,  50, '2024-01-12', 1),
  (10,  7,  15, '2024-01-13', 4),
  (11,  7,  16, '2024-01-15', 1),
  (12,  8,  17, '2024-01-16', 2),
  (13,  9,  12, '2024-01-17', 3),
  (14, 10,  48, '2024-01-18', 1),
  (15, 11,  47, '2024-01-19', 1),
  (16, 12,  45, '2024-01-20', 2),
  (17, 13,   2, '2024-01-21', 2),
  (18, 14,   9, '2024-01-22', 1),
  (19, 15,  28, '2024-01-23', 1),
  (20, 15,  29, '2024-01-24', 2),
  (21, 16,  32, '2024-01-25', 1),
  (22, 17,  40, '2024-01-26', 3),
  (23, 18,   3, '2024-01-27', 1),
  (24, 18,   4, '2024-01-28', 2),
  (25, 19,   7, '2024-01-29', 2),
  (26, 19,   8, '2024-01-30', 1),
  (27, 20,  43, '2024-01-31', 1),
  (28, 21,  19, '2024-02-01', 2),
  (29, 22,  20, '2024-02-02', 1),
  (30, 23,  21, '2024-02-03', 1),
  (31, 24,  22, '2024-02-04', 2),
  (32, 25,  23, '2024-02-05', 3),
  (33, 25,  24, '2024-02-06', 1),
  (34, 26,  35, '2024-02-07', 1),
  (35, 27,  36, '2024-02-08', 1),
  (36, 28,  31, '2024-02-09', 2),
  (37, 29,   5, '2024-02-10', 2),
  (38, 30,  42, '2024-02-11', 3),
  (39, 31,  18, '2024-02-12', 2),
  (40, 32,  15, '2024-02-13', 1),
  (41, 33,  25, '2024-02-14', 1),
  (42, 34,  37, '2024-02-15', 2),
  (43, 35,  39, '2024-02-16', 3),
  (44, 36,  44, '2024-02-17', 1),
  (45, 37,   5, '2024-02-18', 2),
  (46, 37,   6, '2024-02-19', 1),
  (47, 38,  28, '2024-02-20', 2),
  (48, 39,  29, '2024-02-21', 3),
  (49, 40,  10, '2024-02-22', 2),
  (50, 41,  11, '2024-02-23', 1),
  (51, 42,  14, '2024-02-24', 2),
  (52, 43,  45, '2024-02-25', 1),
  (53, 44,  32, '2024-02-26', 2),
  (54, 45,  46, '2024-02-27', 1),
  (55, 46,  33, '2024-02-28', 2),
  (56, 47,  49, '2024-03-01', 1),
  (57, 48,   2, '2024-03-02', 3),
  (58, 49,   9, '2024-03-03', 2),
  (59, 50,  50, '2024-03-04', 1),
  (60, 50,   1, '2024-03-05', 4);

