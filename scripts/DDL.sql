-----------------------------------------
-- 1. Database Schema (3NF Normalized)
-----------------------------------------

-- Core Tables
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(50) NOT NULL UNIQUE,
    CreatedDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL FOREIGN KEY REFERENCES Departments(DepartmentID),
    HireDate DATE NOT NULL,
    Position NVARCHAR(50) NOT NULL,
    IsActive BIT DEFAULT 1,
    CONSTRAINT CHK_HireDate CHECK (HireDate <= GETDATE())
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    DateOfBirth DATE NOT NULL,
    Address NVARCHAR(255),
    Username NVARCHAR(50) UNIQUE NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    IsActive BIT DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE(),
    CONSTRAINT CHK_Age CHECK (DATEDIFF(YEAR, DateOfBirth, GETDATE()) >= 18)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),
    SupplierName NVARCHAR(100) UNIQUE NOT NULL,
    ContactName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255),
    Phone NVARCHAR(20),
    Email NVARCHAR(100),
    ReliabilityRating DECIMAL(3,2) DEFAULT 5.0,
    LastDeliveryDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0),
    CostPrice DECIMAL(10,2) NOT NULL,
    SupplierID INT NOT NULL FOREIGN KEY REFERENCES Suppliers(SupplierID),
    StockQuantity INT NOT NULL CHECK (StockQuantity >= 0),
    ReorderLevel INT DEFAULT 10,
    LastRestockDate DATE
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerID),
    EmployeeID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
    OrderDate DATETIME DEFAULT GETDATE() NOT NULL,
    TotalAmount DECIMAL(12,2) CHECK (TotalAmount >= 0),
    PaymentStatus NVARCHAR(20) 
        DEFAULT 'Pending' 
        CHECK (PaymentStatus IN ('Pending', 'Completed', 'Refunded')),
    PaymentMethod NVARCHAR(50),
    TrackingNumber UNIQUEIDENTIFIER DEFAULT NEWID(),
    CONSTRAINT CHK_OrderDate CHECK (OrderDate <= GETDATE())
);

-- Junction Tables
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) NOT NULL,
    LineTotal AS (Quantity * UnitPrice) PERSISTED,
    INDEX IX_OrderDetails_Product (ProductID)
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment NVARCHAR(MAX),
    ReviewDate DATETIME DEFAULT GETDATE(),
    CONSTRAINT UC_ProductReview UNIQUE (CustomerID, ProductID)
);

-- Inventory Management
CREATE TABLE InventoryLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
    Adjustment INT NOT NULL,
    Reason NVARCHAR(100),
    LogDate DATETIME DEFAULT GETDATE(),
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID)
);
