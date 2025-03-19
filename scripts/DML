-- Insert Departments
INSERT INTO Departments (DepartmentName) VALUES
('Sales'), ('HR'), ('IT'), ('Finance'), ('Operations'), ('Marketing'), ('Customer Service'), ('Logistics'), ('Procurement');

-- Insert Employees
INSERT INTO Employees (FirstName, LastName, DepartmentID, HireDate, Position) VALUES
('Chukwuemeka', 'Okafor', 1, '2019-06-15', 'Sales Executive'),
('Ngozi', 'Eze', 2, '2018-02-20', 'HR Manager'),
('Tunde', 'Balogun', 3, '2017-11-05', 'IT Support Specialist'),
('Fatima', 'Ahmed', 4, '2020-01-12', 'Finance Analyst'),
('Ifeanyi', 'Uche', 5, '2016-09-23', 'Operations Manager'),
('Bola', 'Adeniyi', 6, '2021-07-14', 'Marketing Coordinator'),
('Grace', 'Onyeka', 7, '2019-03-08', 'Customer Service Representative'),
('Emeka', 'Olawale', 8, '2015-05-19', 'Procurement Officer'),
('Aisha', 'Bello', 1, '2022-04-11', 'Sales Representative');

-- Insert Customers
INSERT INTO Customers (FirstName, LastName, Email, DateOfBirth, Address, Username, PasswordHash) VALUES
('Adebayo', 'Ogunleye', 'adebayo@example.com', '1987-05-22', '23 Allen Avenue, Ikeja, Lagos', 'adebayo_og', 'hashedpassword1'),
('Chiamaka', 'Nwosu', 'chiamaka@example.com', '1992-08-14', '45 Aba Road, Port Harcourt', 'chiamaka_n', 'hashedpassword2'),
('Kelechi', 'Okonkwo', 'kelechi@example.com', '1995-12-10', '78 Garki, Abuja', 'kelechi_o', 'hashedpassword3'),
('Usman', 'Bello', 'usman@example.com', '1989-07-30', '12 Sabo, Kano', 'usman_b', 'hashedpassword4'),
('Zainab', 'Mohammed', 'zainab@example.com', '1994-06-05', '33 Maitama, Abuja', 'zainab_m', 'hashedpassword5'),
('Michael', 'Adeyemi', 'michael@example.com', '1985-09-18', '88 Lekki Phase 1, Lagos', 'michael_a', 'hashedpassword6');

-- Insert Suppliers
INSERT INTO Suppliers (SupplierName, ContactName, Address, Phone, Email) VALUES
('Dangote Group', 'Alhaji Aliko Dangote', '1 Dangote Road, Lagos', '08012345678', 'dangote@example.com'),
('Nestle Nigeria', 'Mr. Tony Elumelu', '25 Industrial Ave, Ikeja', '08087654321', 'nestle@example.com'),
('MTN Nigeria', 'Mrs. Funke Akindele', 'Plot 23 VI, Lagos', '07099887766', 'mtn@example.com'),
('Coca-Cola Nigeria', 'Mr. John Doe', '5 Industrial Estate, Lagos', '08123456789', 'cocacola@example.com');

-- Insert Products
INSERT INTO Products (ProductName, Category, Description, Price, CostPrice, SupplierID, StockQuantity) VALUES
('Rice 50kg', 'Food', 'Premium Nigerian Rice', 35000.00, 28000.00, 1, 200),
('Cement Bag', 'Construction', 'Dangote Cement 50kg', 4500.00, 3500.00, 1, 500),
('Milk Powder', 'Dairy', 'Nestle Full Cream Milk', 1500.00, 1000.00, 2, 1000),
('Mobile Phone', 'Electronics', 'MTN-branded Smartphone', 60000.00, 45000.00, 3, 100),
('Soft Drink Pack', 'Beverages', 'Coca-Cola 24-pack', 5000.00, 3000.00, 4, 750);

-- Insert Orders
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, TotalAmount, PaymentStatus, PaymentMethod) VALUES
(1, 1, '2024-03-15', 35000.00, 'Completed', 'Bank Transfer'),
(2, 2, '2024-03-16', 4500.00, 'Pending', 'Cash'),
(3, 3, '2024-03-17', 60000.00, 'Completed', 'Card Payment'),
(4, 4, '2024-03-18', 5000.00, 'Completed', 'Mobile Payment');

-- Insert OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 35000.00),
(2, 2, 2, 4500.00),
(3, 4, 1, 60000.00),
(4, 5, 2, 5000.00);

-- Insert Reviews

INSERT INTO Reviews (CustomerID, ProductID, Rating, Comment) VALUES
(1, 1, 5, 'Excellent quality rice!'),
(2, 2, 4, 'Good cement for construction'),
(3, 4, 5, 'Great smartphone, works well in Nigeria'),
(4, 5, 4, 'Refreshing beverage');

-- Insert Inventory Log

INSERT INTO InventoryLog (ProductID, Adjustment, Reason, EmployeeID) VALUES
(1, -1, 'Customer Purchase', 1),
(2, -2, 'Customer Purchase', 2),
(4, -1, 'Customer Purchase', 3),
(5, -2, 'Customer Purchase', 4);
