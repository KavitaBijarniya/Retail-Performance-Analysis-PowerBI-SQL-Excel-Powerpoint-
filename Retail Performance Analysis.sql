
CREATE DATABASE OnlineRetailDB;

USE OnlineRetailDB;



CREATE TABLE Regions (
    Region_ID CHAR(5) PRIMARY KEY,
    Region_Name VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Customers (
    Customer_ID CHAR(5) PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Region_ID CHAR(5) FOREIGN KEY REFERENCES Regions(Region_ID),
    Join_Date DATE
);

CREATE TABLE Products (
    Product_ID CHAR(5) PRIMARY KEY,
    Product_Name VARCHAR(150),
    Category VARCHAR(50),
    Unit_Price DECIMAL(10,2),
    Cost_Price DECIMAL(10,2),
    Supplier VARCHAR(100),
    Warranty_Months INT
);

CREATE TABLE Orders (
    Order_ID CHAR(6) PRIMARY KEY,
    Customer_ID CHAR(5) FOREIGN KEY REFERENCES Customers(Customer_ID),
    Order_Date DATE,
    Payment_Method VARCHAR(30),
    Total_Amount DECIMAL(12,2),
    Status VARCHAR(30)
);

CREATE TABLE OrderDetails (
    OrderDetail_ID CHAR(7) PRIMARY KEY,
    Order_ID CHAR(6) FOREIGN KEY REFERENCES Orders(Order_ID),
    Product_ID CHAR(5) FOREIGN KEY REFERENCES Products(Product_ID),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(5,2)
);

CREATE TABLE Inventory (
    Product_ID CHAR(5) PRIMARY KEY FOREIGN KEY REFERENCES Products(Product_ID),
    Stock_Available INT,
    Reorder_Level INT
);


INSERT INTO Regions (Region_ID, Region_Name, Country) VALUES ('R001', 'North', 'India');
INSERT INTO Regions (Region_ID, Region_Name, Country) VALUES ('R002', 'South', 'India');
INSERT INTO Regions (Region_ID, Region_Name, Country) VALUES ('R003', 'East', 'India');
INSERT INTO Regions (Region_ID, Region_Name, Country) VALUES ('R004', 'West', 'India');


INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C001', 'Vikram Joshi', 'Other', 41, 'R002', '2023-01-15');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C002', 'Geeta Verma', 'Other', 35, 'R001', '2023-09-16');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C003', 'Neha Roy', 'Other', 33, 'R002', '2023-04-19');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C004', 'Arjun Gupta', 'Other', 53, 'R002', '2022-11-29');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C005', 'Rahul Verma', 'Male', 38, 'R004', '2022-10-02');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C006', 'Priya Verma', 'Other', 38, 'R002', '2023-11-03');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C007', 'Meera Patel', 'Other', 47, 'R002', '2022-09-29');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C008', 'Sneha Verma', 'Other', 53, 'R003', '2023-08-22');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C009', 'Pooja Bansal', 'Other', 43, 'R003', '2022-08-13');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C010', 'Sneha Roy', 'Female', 23, 'R001', '2022-04-23');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C011', 'Sneha Kumar', 'Male', 45, 'R001', '2023-01-30');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C012', 'Arjun Singh', 'Female', 51, 'R003', '2023-07-21');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C013', 'Kavita Kumar', 'Other', 25, 'R003', '2023-10-19');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C014', 'Deepak Mehta', 'Female', 45, 'R002', '2023-04-10');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C015', 'Kavita Reddy', 'Other', 34, 'R002', '2023-06-04');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C016', 'Aman Bose', 'Other', 37, 'R002', '2022-06-06');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C017', 'Geeta Iyer', 'Male', 52, 'R001', '2023-09-06');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C018', 'Deepak Joshi', 'Male', 25, 'R003', '2022-11-11');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C019', 'Anita Sharma', 'Male', 54, 'R001', '2022-03-29');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C020', 'Meera Bose', 'Male', 52, 'R002', '2022-05-12');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C021', 'Meera Roy', 'Male', 34, 'R004', '2022-08-05');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C022', 'Ritu Iyer', 'Other', 30, 'R003', '2023-02-13');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C023', 'Geeta Joshi', 'Other', 46, 'R001', '2022-09-11');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C024', 'Anita Mehta', 'Female', 19, 'R002', '2023-08-26');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C025', 'Anita Sharma', 'Male', 58, 'R001', '2022-08-23');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C026', 'Priya Bansal', 'Male', 39, 'R001', '2023-06-11');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C027', 'Anita Gupta', 'Other', 49, 'R002', '2023-07-07');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C028', 'Sneha Reddy', 'Other', 54, 'R004', '2022-09-06');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C029', 'Meera Iyer', 'Female', 30, 'R001', '2022-04-10');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C030', 'Pooja Khan', 'Female', 44, 'R004', '2022-02-25');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C031', 'Aman Sharma', 'Female', 39, 'R001', '2022-09-12');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C032', 'Rohit Verma', 'Other', 46, 'R002', '2023-03-09');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C033', 'Neha Gupta', 'Female', 33, 'R001', '2023-03-30');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C034', 'Ritu Mehta', 'Male', 59, 'R001', '2022-04-06');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C035', 'Anita Nair', 'Female', 49, 'R004', '2022-08-07');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C036', 'Arjun Bansal', 'Male', 28, 'R004', '2022-01-03');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C037', 'Arjun Gupta', 'Female', 36, 'R004', '2023-07-24');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C038', 'Meera Nair', 'Male', 36, 'R002', '2022-03-01');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C039', 'Varun Reddy', 'Other', 21, 'R003', '2022-02-28');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C040', 'Rahul Singh', 'Female', 50, 'R002', '2022-02-28');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C041', 'Ajay Mehta', 'Male', 22, 'R001', '2023-11-23');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C042', 'Anita Patel', 'Male', 54, 'R002', '2023-08-16');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C043', 'Kriti Sharma', 'Other', 23, 'R004', '2023-11-05');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C044', 'Varun Singh', 'Other', 38, 'R003', '2022-07-29');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C045', 'Deepak Verma', 'Female', 43, 'R002', '2023-11-19');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C046', 'Sana Joshi', 'Female', 22, 'R001', '2023-04-15');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C047', 'Kriti Singh', 'Male', 22, 'R002', '2023-06-03');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C048', 'Vikram Nair', 'Female', 22, 'R002', '2023-01-14');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C049', 'Sana Nair', 'Female', 52, 'R003', '2023-09-19');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C050', 'Ajay Sharma', 'Other', 53, 'R003', '2023-11-11');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C051', 'Aman Bansal', 'Male', 34, 'R001', '2022-04-20');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C052', 'Ritu Nair', 'Female', 36, 'R002', '2022-12-18');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C053', 'Rohit Kumar', 'Other', 34, 'R004', '2022-09-15');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C054', 'Rahul Mehta', 'Other', 45, 'R003', '2022-02-15');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C055', 'Kavita Khan', 'Male', 58, 'R003', '2022-06-15');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C056', 'Siddharth Roy', 'Other', 45, 'R001', '2022-04-25');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C057', 'Priya Bansal', 'Other', 27, 'R001', '2023-01-14');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C058', 'Varun Roy', 'Male', 45, 'R002', '2022-02-12');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C059', 'Sana Khan', 'Male', 40, 'R002', '2023-11-30');
INSERT INTO Customers (Customer_ID, Customer_Name, Gender, Age, Region_ID, Join_Date) VALUES ('C060', 'Anita Kumar', 'Male', 40, 'R004', '2023-09-28');


INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P001', 'Wireless Mouse', 'Electronics', 5810, 4576, 'Logitech', 24);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P002', 'Bluetooth Headphones', 'Peripherals', 11060, 7738, 'Dell', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P003', 'Laptop Bag', 'Accessories', 2590, 1525, 'Boat', 24);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P004', 'Mechanical Keyboard', 'Electronics', 1150, 881, 'Samsung', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P005', 'USB Cable', 'Electronics', 9140, 6644, 'Logitech', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P006', 'Portable Charger', 'Accessories', 600, 475, 'Dell', 24);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P007', 'Webcam HD', 'Electronics', 12540, 7562, 'HP', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P008', 'Gaming Mouse', 'Storage', 2970, 1769, 'Dell', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P009', 'Monitor 24 inch', 'Peripherals', 4770, 3249, 'Logitech', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P010', 'SSD 512GB', 'Storage', 6650, 4141, 'Sony', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P011', 'External HDD 1TB', 'Accessories', 9290, 5433, 'Dell', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P012', 'Smartphone Case', 'Electronics', 4590, 2944, 'Boat', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P013', 'Wireless Charger', 'Electronics', 7000, 5224, 'Sony', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P014', 'Fitness Band', 'Peripherals', 3240, 2198, 'Logitech', 24);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P015', 'Bluetooth Speaker', 'Storage', 9010, 5060, 'HP', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P016', 'Desk Lamp', 'Storage', 9230, 5469, 'Boat', 24);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P017', 'Graphic Tablet', 'Peripherals', 1260, 991, 'Samsung', 12);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P018', 'Router', 'Accessories', 14490, 10897, 'Boat', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P019', 'Microphone', 'Accessories', 4780, 2745, 'Zebronics', 6);
INSERT INTO Products (Product_ID, Product_Name, Category, Unit_Price, Cost_Price, Supplier, Warranty_Months) VALUES ('P020', 'HDMI Cable', 'Accessories', 10360, 6837, 'Boat', 12);


INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P001', 72, 8);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P002', 45, 18);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P003', 9, 5);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P004', 48, 19);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P005', 36, 12);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P006', 79, 18);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P007', 37, 11);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P008', 51, 16);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P009', 5, 5);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P010', 3, 5);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P011', 7, 5);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P012', 55, 9);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P013', 5, 5);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P014', 55, 6);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P015', 64, 19);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P016', 19, 9);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P017', 45, 12);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P018', 35, 14);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P019', 75, 13);
INSERT INTO Inventory (Product_ID, Stock_Available, Reorder_Level) VALUES ('P020', 63, 16);


INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0001', 'C048', '2023-06-08', 'UPI', 1140.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0002', 'C052', '2023-07-01', 'Net Banking', 510.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0003', 'C048', '2023-12-07', 'Net Banking', 80023.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0004', 'C056', '2023-09-12', 'COD', 64243.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0005', 'C045', '2023-04-21', 'Net Banking', 97422.5, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0006', 'C055', '2024-04-26', 'UPI', 41869.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0007', 'C059', '2024-04-16', 'COD', 23101.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0008', 'C051', '2023-08-22', 'UPI', 67835.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0009', 'C013', '2024-02-13', 'COD', 31245.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0010', 'C005', '2023-10-13', 'COD', 125692.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0011', 'C026', '2024-11-26', 'Wallet', 19418.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0012', 'C002', '2023-04-29', 'COD', 8559.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0013', 'C017', '2023-02-09', 'Credit Card', 59721.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0014', 'C023', '2023-11-18', 'Net Banking', 30789.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0015', 'C033', '2023-04-29', 'Net Banking', 16957.5, 'Cancelled');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0016', 'C013', '2023-09-18', 'Credit Card', 69385.5, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0017', 'C001', '2024-06-16', 'Wallet', 63777.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0018', 'C048', '2024-11-17', 'UPI', 53669.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0019', 'C005', '2024-11-11', 'COD', 24921.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0020', 'C043', '2023-05-08', 'COD', 138104.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0021', 'C043', '2024-02-23', 'COD', 14902.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0022', 'C019', '2024-07-21', 'UPI', 70393.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0023', 'C043', '2024-01-24', 'UPI', 12141.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0024', 'C020', '2024-02-20', 'Wallet', 39368.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0025', 'C020', '2023-10-21', 'UPI', 93098.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0026', 'C038', '2024-09-13', 'COD', 24327.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0027', 'C029', '2024-11-22', 'UPI', 105147.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0028', 'C051', '2023-06-23', 'Credit Card', 49154.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0029', 'C043', '2024-10-10', 'Wallet', 36306.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0030', 'C053', '2023-08-29', 'COD', 40198.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0031', 'C013', '2023-05-31', 'Credit Card', 14443.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0032', 'C031', '2024-09-17', 'Credit Card', 78960.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0033', 'C057', '2024-10-06', 'Wallet', 71040.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0034', 'C045', '2024-01-29', 'Net Banking', 69132.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0035', 'C010', '2024-11-02', 'Credit Card', 22975.5, 'Cancelled');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0036', 'C056', '2023-04-20', 'Net Banking', 9140.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0037', 'C052', '2024-06-14', 'Net Banking', 33636.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0038', 'C016', '2023-05-05', 'Net Banking', 14466.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0039', 'C030', '2024-11-14', 'Wallet', 52191.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0040', 'C039', '2023-11-21', 'Net Banking', 19950.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0041', 'C047', '2024-05-31', 'Net Banking', 8559.5, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0042', 'C036', '2024-04-01', 'UPI', 31521.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0043', 'C031', '2024-04-05', 'COD', 64106.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0044', 'C054', '2024-10-14', 'COD', 72499.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0045', 'C034', '2024-05-11', 'UPI', 33511.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0046', 'C005', '2023-10-20', 'UPI', 8262.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0047', 'C021', '2024-07-07', 'Credit Card', 1800.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0048', 'C015', '2024-01-28', 'UPI', 7524.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0049', 'C005', '2024-02-29', 'Net Banking', 33863.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0050', 'C030', '2024-03-01', 'Credit Card', 90024.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0051', 'C027', '2024-02-03', 'Wallet', 24678.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0052', 'C002', '2024-08-12', 'Net Banking', 107511.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0053', 'C023', '2023-11-02', 'Net Banking', 48176.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0054', 'C054', '2024-03-05', 'Wallet', 51164.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0055', 'C035', '2024-09-09', 'UPI', 2916.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0056', 'C018', '2024-03-22', 'Net Banking', 74606.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0057', 'C022', '2024-11-15', 'Net Banking', 79347.5, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0058', 'C054', '2024-04-23', 'UPI', 21672.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0059', 'C035', '2023-01-28', 'Net Banking', 22657.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0060', 'C043', '2023-01-28', 'Credit Card', 61956.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0061', 'C009', '2024-04-17', 'UPI', 11541.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0062', 'C025', '2023-12-02', 'UPI', 31032.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0063', 'C022', '2024-01-24', 'COD', 20716.5, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0064', 'C054', '2024-03-07', 'COD', 87683.5, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0065', 'C031', '2023-01-20', 'Wallet', 48224.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0066', 'C023', '2023-08-18', 'Credit Card', 55849.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0067', 'C042', '2023-02-11', 'Credit Card', 66563.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0068', 'C013', '2023-01-21', 'Wallet', 45671.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0069', 'C009', '2024-04-29', 'Credit Card', 30168.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0070', 'C014', '2024-04-21', 'COD', 48717.5, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0071', 'C011', '2024-09-12', 'Wallet', 7531.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0072', 'C046', '2023-04-28', 'UPI', 11356.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0073', 'C007', '2024-08-15', 'Credit Card', 67830.5, 'Cancelled');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0074', 'C037', '2024-11-24', 'Net Banking', 24829.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0075', 'C046', '2023-07-23', 'Credit Card', 11007.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0076', 'C054', '2024-10-04', 'UPI', 119848.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0077', 'C050', '2023-11-05', 'Wallet', 8825.5, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0078', 'C051', '2024-08-02', 'Credit Card', 10098.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0079', 'C028', '2024-11-08', 'COD', 49000.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0080', 'C042', '2023-12-16', 'Credit Card', 8361.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0081', 'C053', '2024-05-16', 'Credit Card', 52164.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0082', 'C024', '2024-10-12', 'Net Banking', 69822.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0083', 'C028', '2023-06-30', 'Wallet', 28262.5, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0084', 'C018', '2024-09-22', 'Wallet', 41419.5, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0085', 'C030', '2024-03-22', 'Wallet', 35188.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0086', 'C055', '2023-09-09', 'Credit Card', 6650.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0087', 'C029', '2023-09-07', 'Net Banking', 65050.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0088', 'C043', '2024-01-24', 'COD', 66495.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0089', 'C055', '2023-11-29', 'UPI', 87957.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0090', 'C023', '2023-09-22', 'COD', 26814.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0091', 'C039', '2023-10-10', 'Wallet', 53074.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0092', 'C013', '2023-03-29', 'UPI', 9180.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0093', 'C032', '2024-07-22', 'UPI', 41527.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0094', 'C042', '2024-05-17', 'Net Banking', 50338.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0095', 'C006', '2023-10-29', 'UPI', 18802.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0096', 'C016', '2023-11-10', 'Wallet', 77437.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0097', 'C036', '2024-06-27', 'COD', 24140.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0098', 'C048', '2024-07-17', 'COD', 6300.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0099', 'C030', '2023-10-05', 'COD', 84951.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0100', 'C008', '2023-07-17', 'COD', 57573.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0101', 'C035', '2023-07-09', 'UPI', 48327.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0102', 'C031', '2023-10-11', 'Wallet', 76605.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0103', 'C034', '2024-09-03', 'COD', 98852.5, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0104', 'C054', '2023-07-18', 'COD', 15390.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0105', 'C012', '2023-11-06', 'Credit Card', 39023.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0106', 'C009', '2023-10-08', 'Credit Card', 47744.5, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0107', 'C036', '2023-10-27', 'UPI', 63731.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0108', 'C049', '2024-05-17', 'Credit Card', 8683.0, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0109', 'C037', '2023-10-19', 'Net Banking', 75205.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0110', 'C022', '2023-07-08', 'Credit Card', 8604.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0111', 'C056', '2024-05-04', 'Credit Card', 42998.5, 'Returned');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0112', 'C026', '2024-05-18', 'Credit Card', 42580.5, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0113', 'C044', '2023-02-24', 'UPI', 48147.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0114', 'C037', '2023-11-08', 'Credit Card', 23826.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0115', 'C008', '2024-07-25', 'Net Banking', 74321.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0116', 'C051', '2024-09-25', 'UPI', 54993.0, 'Pending');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0117', 'C025', '2024-04-06', 'Net Banking', 9225.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0118', 'C038', '2024-03-15', 'COD', 56061.0, 'Delivered');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0119', 'C004', '2024-09-16', 'Credit Card', 49932.0, 'Shipped');
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Payment_Method, Total_Amount, Status) VALUES ('O0120', 'C014', '2024-10-02', 'UPI', 55702.0, 'Delivered');


INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00001', 'O0001', 'P006', 2, 600, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00002', 'O0002', 'P006', 1, 600, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00003', 'O0003', 'P020', 2, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00004', 'O0003', 'P016', 3, 9230, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00005', 'O0003', 'P010', 1, 6650, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00006', 'O0003', 'P002', 3, 11060, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00007', 'O0004', 'P004', 3, 1150, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00008', 'O0004', 'P018', 1, 14490, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00009', 'O0004', 'P008', 2, 2970, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00010', 'O0004', 'P005', 5, 9140, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00011', 'O0005', 'P004', 3, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00012', 'O0005', 'P015', 4, 9010, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00013', 'O0005', 'P010', 5, 6650, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00014', 'O0005', 'P013', 4, 7000, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00015', 'O0006', 'P001', 5, 5810, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00016', 'O0006', 'P003', 3, 2590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00017', 'O0006', 'P008', 2, 2970, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00018', 'O0007', 'P009', 1, 4770, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00019', 'O0007', 'P006', 3, 600, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00020', 'O0007', 'P014', 3, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00021', 'O0007', 'P016', 1, 9230, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00022', 'O0008', 'P014', 4, 3240, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00023', 'O0008', 'P016', 4, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00024', 'O0008', 'P010', 3, 6650, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00025', 'O0009', 'P004', 1, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00026', 'O0009', 'P013', 4, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00027', 'O0009', 'P017', 2, 1260, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00028', 'O0010', 'P015', 5, 9010, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00029', 'O0010', 'P002', 3, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00030', 'O0010', 'P007', 4, 12540, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00031', 'O0010', 'P009', 1, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00032', 'O0011', 'P010', 1, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00033', 'O0011', 'P018', 1, 14490, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00034', 'O0012', 'P015', 1, 9010, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00035', 'O0013', 'P010', 4, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00036', 'O0013', 'P017', 2, 1260, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00037', 'O0013', 'P009', 5, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00038', 'O0013', 'P014', 4, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00039', 'O0014', 'P003', 4, 2590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00040', 'O0014', 'P009', 5, 4770, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00041', 'O0015', 'P010', 3, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00042', 'O0016', 'P015', 4, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00043', 'O0016', 'P018', 3, 14490, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00044', 'O0017', 'P011', 2, 9290, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00045', 'O0017', 'P007', 1, 12540, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00046', 'O0017', 'P008', 4, 2970, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00047', 'O0017', 'P013', 4, 7000, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00048', 'O0018', 'P002', 1, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00049', 'O0018', 'P005', 1, 9140, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00050', 'O0018', 'P017', 1, 1260, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00051', 'O0018', 'P011', 4, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00052', 'O0019', 'P016', 3, 9230, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00053', 'O0020', 'P003', 3, 2590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00054', 'O0020', 'P011', 5, 9290, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00055', 'O0020', 'P018', 5, 14490, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00056', 'O0020', 'P013', 2, 7000, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00057', 'O0021', 'P003', 1, 2590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00058', 'O0021', 'P014', 4, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00059', 'O0022', 'P001', 1, 5810, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00060', 'O0022', 'P002', 3, 11060, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00061', 'O0022', 'P011', 4, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00062', 'O0023', 'P017', 5, 1260, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00063', 'O0023', 'P014', 2, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00064', 'O0024', 'P020', 4, 10360, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00065', 'O0025', 'P019', 3, 4780, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00066', 'O0025', 'P005', 3, 9140, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00067', 'O0025', 'P008', 4, 2970, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00068', 'O0025', 'P015', 5, 9010, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00069', 'O0026', 'P015', 3, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00070', 'O0027', 'P009', 4, 4770, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00071', 'O0027', 'P015', 1, 9010, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00072', 'O0027', 'P010', 4, 6650, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00073', 'O0027', 'P007', 5, 12540, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00074', 'O0028', 'P001', 1, 5810, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00075', 'O0028', 'P013', 5, 7000, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00076', 'O0028', 'P009', 3, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00077', 'O0029', 'P008', 2, 2970, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00078', 'O0029', 'P007', 1, 12540, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00079', 'O0029', 'P009', 4, 4770, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00080', 'O0030', 'P005', 3, 9140, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00081', 'O0030', 'P003', 2, 2590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00082', 'O0030', 'P010', 2, 6650, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00083', 'O0031', 'P006', 3, 600, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00084', 'O0031', 'P009', 1, 4770, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00085', 'O0031', 'P016', 1, 9230, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00086', 'O0032', 'P013', 3, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00087', 'O0032', 'P018', 4, 14490, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00088', 'O0033', 'P018', 3, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00089', 'O0033', 'P004', 5, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00090', 'O0033', 'P015', 3, 9010, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00091', 'O0034', 'P016', 5, 9230, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00092', 'O0034', 'P001', 5, 5810, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00093', 'O0035', 'P015', 3, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00094', 'O0036', 'P005', 1, 9140, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00095', 'O0037', 'P016', 2, 9230, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00096', 'O0037', 'P004', 4, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00097', 'O0037', 'P019', 3, 4780, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00098', 'O0038', 'P014', 4, 3240, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00099', 'O0038', 'P004', 3, 1150, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00100', 'O0039', 'P007', 2, 12540, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00101', 'O0039', 'P015', 1, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00102', 'O0039', 'P019', 5, 4780, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00103', 'O0040', 'P013', 3, 7000, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00104', 'O0041', 'P015', 1, 9010, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00105', 'O0042', 'P002', 3, 11060, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00106', 'O0043', 'P019', 1, 4780, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00107', 'O0043', 'P007', 5, 12540, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00108', 'O0044', 'P011', 5, 9290, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00109', 'O0044', 'P005', 3, 9140, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00110', 'O0045', 'P018', 2, 14490, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00111', 'O0045', 'P009', 1, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00112', 'O0046', 'P012', 2, 4590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00113', 'O0047', 'P006', 3, 600, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00114', 'O0048', 'P014', 1, 3240, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00115', 'O0048', 'P017', 4, 1260, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00116', 'O0049', 'P017', 4, 1260, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00117', 'O0049', 'P019', 5, 4780, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00118', 'O0049', 'P004', 5, 1150, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00119', 'O0050', 'P001', 4, 5810, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00120', 'O0050', 'P002', 4, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00121', 'O0050', 'P016', 1, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00122', 'O0050', 'P013', 3, 7000, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00123', 'O0051', 'P005', 3, 9140, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00124', 'O0052', 'P020', 5, 10360, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00125', 'O0052', 'P017', 1, 1260, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00126', 'O0052', 'P010', 5, 6650, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00127', 'O0052', 'P015', 4, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00128', 'O0053', 'P014', 4, 3240, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00129', 'O0053', 'P011', 4, 9290, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00130', 'O0054', 'P014', 3, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00131', 'O0054', 'P011', 4, 9290, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00132', 'O0054', 'P009', 1, 4770, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00133', 'O0055', 'P014', 1, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00134', 'O0056', 'P018', 5, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00135', 'O0056', 'P002', 1, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00136', 'O0057', 'P014', 5, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00137', 'O0057', 'P002', 3, 11060, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00138', 'O0057', 'P010', 5, 6650, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00139', 'O0058', 'P016', 1, 9230, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00140', 'O0058', 'P008', 5, 2970, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00141', 'O0059', 'P009', 5, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00142', 'O0060', 'P018', 1, 14490, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00143', 'O0060', 'P020', 3, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00144', 'O0060', 'P001', 3, 5810, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00145', 'O0060', 'P009', 1, 4770, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00146', 'O0061', 'P019', 1, 4780, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00147', 'O0061', 'P013', 1, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00148', 'O0062', 'P013', 4, 7000, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00149', 'O0062', 'P014', 2, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00150', 'O0063', 'P011', 1, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00151', 'O0063', 'P019', 2, 4780, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00152', 'O0063', 'P003', 1, 2590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00153', 'O0064', 'P014', 3, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00154', 'O0064', 'P016', 5, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00155', 'O0064', 'P015', 3, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00156', 'O0064', 'P020', 1, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00157', 'O0065', 'P017', 4, 1260, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00158', 'O0065', 'P010', 1, 6650, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00159', 'O0065', 'P002', 3, 11060, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00160', 'O0065', 'P008', 2, 2970, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00161', 'O0066', 'P011', 4, 9290, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00162', 'O0066', 'P004', 2, 1150, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00163', 'O0066', 'P001', 4, 5810, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00164', 'O0067', 'P003', 4, 2590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00165', 'O0067', 'P013', 4, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00166', 'O0067', 'P002', 3, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00167', 'O0068', 'P014', 1, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00168', 'O0068', 'P010', 2, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00169', 'O0068', 'P004', 3, 1150, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00170', 'O0068', 'P013', 4, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00171', 'O0069', 'P014', 4, 3240, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00172', 'O0069', 'P019', 4, 4780, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00173', 'O0070', 'P008', 1, 2970, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00174', 'O0070', 'P011', 5, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00175', 'O0070', 'P006', 3, 600, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00176', 'O0071', 'P008', 2, 2970, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00177', 'O0071', 'P004', 2, 1150, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00178', 'O0072', 'P003', 4, 2590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00179', 'O0072', 'P006', 5, 600, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00180', 'O0073', 'P011', 1, 9290, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00181', 'O0073', 'P005', 4, 9140, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00182', 'O0073', 'P015', 3, 9010, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00183', 'O0074', 'P017', 4, 1260, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00184', 'O0074', 'P003', 1, 2590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00185', 'O0074', 'P010', 3, 6650, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00186', 'O0075', 'P003', 5, 2590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00187', 'O0076', 'P019', 5, 4780, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00188', 'O0076', 'P018', 3, 14490, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00189', 'O0076', 'P002', 5, 11060, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00190', 'O0076', 'P015', 1, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00191', 'O0077', 'P011', 1, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00192', 'O0078', 'P008', 4, 2970, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00193', 'O0079', 'P012', 3, 4590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00194', 'O0079', 'P020', 4, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00195', 'O0080', 'P011', 1, 9290, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00196', 'O0081', 'P018', 4, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00197', 'O0082', 'P020', 1, 10360, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00198', 'O0082', 'P005', 3, 9140, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00199', 'O0082', 'P011', 4, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00200', 'O0083', 'P010', 5, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00201', 'O0084', 'P005', 4, 9140, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00202', 'O0084', 'P017', 1, 1260, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00203', 'O0084', 'P003', 3, 2590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00204', 'O0085', 'P011', 2, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00205', 'O0085', 'P016', 2, 9230, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00206', 'O0086', 'P010', 1, 6650, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00207', 'O0087', 'P020', 2, 10360, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00208', 'O0087', 'P005', 2, 9140, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00209', 'O0087', 'P013', 4, 7000, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00210', 'O0088', 'P012', 4, 4590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00211', 'O0088', 'P008', 5, 2970, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00212', 'O0088', 'P015', 3, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00213', 'O0088', 'P010', 2, 6650, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00214', 'O0089', 'P015', 5, 9010, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00215', 'O0089', 'P010', 2, 6650, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00216', 'O0089', 'P013', 5, 7000, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00217', 'O0089', 'P017', 3, 1260, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00218', 'O0090', 'P012', 1, 4590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00219', 'O0090', 'P018', 1, 14490, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00220', 'O0090', 'P004', 3, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00221', 'O0090', 'P017', 5, 1260, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00222', 'O0091', 'P003', 1, 2590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00223', 'O0091', 'P008', 1, 2970, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00224', 'O0091', 'P015', 5, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00225', 'O0091', 'P012', 2, 4590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00226', 'O0092', 'P012', 2, 4590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00227', 'O0093', 'P004', 2, 1150, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00228', 'O0093', 'P011', 3, 9290, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00229', 'O0093', 'P005', 2, 9140, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00230', 'O0094', 'P020', 3, 10360, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00231', 'O0094', 'P001', 2, 5810, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00232', 'O0094', 'P003', 1, 2590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00233', 'O0094', 'P019', 2, 4780, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00234', 'O0095', 'P002', 2, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00235', 'O0096', 'P003', 5, 2590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00236', 'O0096', 'P004', 2, 1150, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00237', 'O0096', 'P016', 4, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00238', 'O0096', 'P001', 5, 5810, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00239', 'O0097', 'P019', 2, 4780, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00240', 'O0097', 'P014', 5, 3240, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00241', 'O0098', 'P017', 5, 1260, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00242', 'O0099', 'P016', 3, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00243', 'O0099', 'P002', 3, 11060, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00244', 'O0099', 'P013', 3, 7000, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00245', 'O0099', 'P012', 1, 4590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00246', 'O0100', 'P002', 5, 11060, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00247', 'O0100', 'P012', 2, 4590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00248', 'O0101', 'P006', 1, 600, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00249', 'O0101', 'P005', 2, 9140, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00250', 'O0101', 'P003', 2, 2590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00251', 'O0101', 'P015', 3, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00252', 'O0102', 'P018', 2, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00253', 'O0102', 'P016', 3, 9230, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00254', 'O0102', 'P009', 3, 4770, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00255', 'O0102', 'P002', 1, 11060, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00256', 'O0103', 'P013', 2, 7000, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00257', 'O0103', 'P015', 4, 9010, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00258', 'O0103', 'P020', 5, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00259', 'O0103', 'P011', 1, 9290, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00260', 'O0104', 'P014', 5, 3240, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00261', 'O0105', 'P011', 3, 9290, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00262', 'O0105', 'P004', 3, 1150, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00263', 'O0105', 'P003', 5, 2590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00264', 'O0106', 'P015', 4, 9010, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00265', 'O0106', 'P012', 3, 4590, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00266', 'O0107', 'P002', 3, 11060, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00267', 'O0107', 'P003', 1, 2590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00268', 'O0107', 'P013', 5, 7000, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00269', 'O0108', 'P005', 1, 9140, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00270', 'O0109', 'P012', 5, 4590, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00271', 'O0109', 'P013', 4, 7000, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00272', 'O0109', 'P002', 3, 11060, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00273', 'O0110', 'P019', 2, 4780, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00274', 'O0111', 'P011', 1, 9290, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00275', 'O0111', 'P009', 4, 4770, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00276', 'O0111', 'P008', 5, 2970, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00277', 'O0111', 'P004', 3, 1150, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00278', 'O0112', 'P007', 1, 12540, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00279', 'O0112', 'P010', 1, 6650, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00280', 'O0112', 'P016', 2, 9230, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00281', 'O0112', 'P020', 1, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00282', 'O0113', 'P003', 3, 2590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00283', 'O0113', 'P018', 2, 14490, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00284', 'O0113', 'P019', 3, 4780, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00285', 'O0114', 'P007', 2, 12540, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00286', 'O0115', 'P001', 4, 5810, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00287', 'O0115', 'P012', 5, 4590, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00288', 'O0115', 'P018', 1, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00289', 'O0115', 'P019', 4, 4780, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00290', 'O0116', 'P014', 3, 3240, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00291', 'O0116', 'P019', 4, 4780, 0.15);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00292', 'O0116', 'P003', 5, 2590, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00293', 'O0116', 'P005', 2, 9140, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00294', 'O0117', 'P014', 1, 3240, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00295', 'O0117', 'P017', 5, 1260, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00296', 'O0118', 'P006', 2, 600, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00297', 'O0118', 'P020', 5, 10360, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00298', 'O0118', 'P011', 1, 9290, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00299', 'O0119', 'P018', 2, 14490, 0.1);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00300', 'O0119', 'P009', 5, 4770, 0.0);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00301', 'O0120', 'P019', 2, 4780, 0.05);
INSERT INTO OrderDetails (OrderDetail_ID, Order_ID, Product_ID, Quantity, Unit_Price, Discount) VALUES ('OD00302', 'O0120', 'P020', 5, 10360, 0.1);


-- ===== Sample Analysis Queries =====
-- 1. Top 5 Products by Sales
SELECT TOP 5 p.Product_Name, SUM(od.Quantity * od.Unit_Price * (1 - od.Discount)) AS Total_Sales
FROM OrderDetails od
JOIN Products p ON od.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Sales DESC;


-- 2. Revenue by Region
SELECT r.Region_Name, SUM(od.Quantity * od.Unit_Price * (1 - od.Discount)) AS Revenue
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Regions r ON c.Region_ID = r.Region_ID
JOIN OrderDetails od ON o.Order_ID = od.Order_ID
GROUP BY r.Region_Name
ORDER BY Revenue DESC;


-- 3. Monthly Sales Trend
SELECT FORMAT(Order_Date, 'yyyy-MM') AS [Month], SUM(Total_Amount) AS Monthly_Sales
FROM Orders
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY [Month];


-- 4. Average Order Value
SELECT ROUND(SUM(Total_Amount) / COUNT(Order_ID), 2) AS avg_Order_Value
FROM Orders;


-- 5. Low Stock
SELECT p.Product_Name, i.Stock_Available, i.Reorder_Level
FROM Inventory i
JOIN Products p ON i.Product_ID = p.Product_ID
WHERE i.Stock_Available <= i.Reorder_Level;


-- 6. Customer Lifetime Value
SELECT c.Customer_Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Spent DESC;


-- 7. Product Profit Analysis
SELECT p.Product_Name, SUM((od.Unit_Price - p.Cost_Price) * od.Quantity * (1 - od.Discount)) AS Profit
FROM OrderDetails od
JOIN Products p ON od.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Profit DESC;

