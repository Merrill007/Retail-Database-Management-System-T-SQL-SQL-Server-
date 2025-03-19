## **Retail Database Management System**  

### **Streamlining Retail Operations with a Robust Database Solution**  

Splendor Anlytics Retail is a rapidly growing e-commerce and physical store brand that specializes in selling consumer electronics, home appliances, and fashion items. The company operates across multiple locations and has an online store where customers can browse products, place orders, and track deliveries. However, as the business expands, it faces several operational challenges due to its outdated and fragmented data management system.

Currently, Splendor Analytics Retail manages customer data, product inventory, orders, and supplier information using **spreadsheets and disconnected applications**, leading to **data inconsistencies, delays in order fulfillment, stock mismatches, and customer dissatisfaction**.  

Some of the **major pain points** include:  
- **Inventory Issues:** Customers place orders for out-of-stock products due to outdated stock data.  
- **Order Management Challenges:** Orders take too long to process, and tracking order history is difficult.  
- **Supplier Coordination Gaps:** Poor supplier tracking leads to delivery delays and stock shortages.  
- **Customer Service Inefficiencies:** Employees lack quick access to customer history, making issue resolution slow.  
- **Lack of Insights:** The business lacks real-time reporting on sales trends, top-performing products, and customer behavior.  

To address these challenges, **Splendor Analytics Retail has decided to implement a centralized, high-performance database management system** using **Microsoft SQL Server**. This system will integrate and streamline the company’s operations, providing a **real-time, structured, and optimized solution for managing customers, inventory, orders, suppliers, employees, and analytics**.  

---

### **Project Introduction**  

This project aims to **design and develop a robust relational database system** for ABC Retail. The system will ensure **seamless data management, automation of business operations, and efficient decision-making** through structured data storage and retrieval.  

The database will cover **the following core functionalities**:  
1. **Customer Management** – Handling customer registrations, orders, and reviews.  
2. **Inventory Management** – Maintaining accurate stock levels and supplier details.  
3. **Order Processing** – Managing order creation, payments, and tracking status.  
4. **Supplier Coordination** – Storing supplier details and purchase history.  
5. **Employee & Department Tracking** – Organizing workforce information.  
6. **Reporting & Business Intelligence** – Generating critical sales insights and performance reports.  

---

### **Requirement Analysis & Project Breakdown for the Retail Database System**

---

## **1. High-Level Requirement Analysis**
Splendor Analytics retail company requires a **database management system** to efficiently handle **customers, products, orders, suppliers, inventory, employees, and reviews**. The system should ensure **data integrity**, support **customer interactions**, and provide **real-time reporting** for business decision-making.

### **1.1. Functional Requirements**
#### **Customer Management**
- Customers **register** by providing personal details.
- Customers can **browse and purchase products**.
- Customers can **track their orders**.
- Customers can **write reviews** after a purchase.
- If a customer **deactivates their account**, their data should be retained.

#### **Product & Inventory Management**
- Store **product details** (name, category, price, supplier, stock quantity).
- Manage **real-time inventory updates** when a purchase is made.
- Ensure stock **is not negative**.

#### **Order & Payment Management**
- Customers place orders with **date, total amount, payment status**.
- Orders are validated to **check stock availability**.
- Payments are recorded with **payment type and status**.

#### **Supplier Management**
- Suppliers provide **products**, and their **contact details, delivery schedules, and purchase history** must be stored.

#### **Employee & Department Management**
- Employees manage **sales, warehouse, customer service**.
- Each employee belongs to a **department**.
- The system should allow **employee information updates**.

#### **Reporting & Business Intelligence**
- Generate reports on **customer orders, top-selling products, supplier performance**.
- Provide a **view for orders** with **customer name, product details, payment status, and reviews**.

---

### **2. Project Breakdown: Steps and Layers**
The project will be broken into several phases, each focusing on a core aspect of database development and implementation.

### **2.1. Phase 1: Database Design & Normalization**
- Identify **entities and relationships**.
- **Normalize** the schema to **3rd Normal Form (3NF)**.
- Define **primary keys (PK) and foreign keys (FK)**.

### **2.2. Phase 2: Database Implementation (SQL Server)**
- **Create tables** for:
  - Customers
  - Orders
  - Products
  - Suppliers
  - Inventory
  - Employees
  - Departments
  - Order Reviews
- Define **data types, constraints, and relationships**.

### **2.3. Phase 3: Data Population & Integrity Constraints**
- Populate tables with **sample data** (at least 7 records per table).
- Implement **data integrity constraints**:
  - **Order date** must not be in the past.
  - **Stock quantity** must not be negative.

### **2.4. Phase 4: Business Logic (Stored Procedures & Functions)**
- **Create stored procedures** for:
  1. **Searching products** by name (sorted by recent purchase).
  2. **Fetching a customer’s complete order history**.
  3. **Updating employee information**.
  4. **Deleting completed orders** after a set time.
- **Create user-defined functions** for reusable business logic.

### **2.5. Phase 5: Data Retrieval & Reporting**
- **Write queries** for:
  - Customers **older than 40 with orders exceeding $5000**.
  - Orders **linked to suppliers and employees**.
- **Create a view** showing:
  - **Order date, product details, customer name, supplier, employee, reviews**.

### **2.6. Phase 6: Testing & Optimization**
- Run **test cases** to check data integrity.
- Optimize queries for **performance**.

---

### **3. System Architecture (Layers)**
| **Layer**       | **Description** |
|-----------------|----------------|
| **Data Layer**  | SQL Server database storing all **tables, constraints, and indexes**. |
| **Business Logic Layer** | Stored procedures, functions, and triggers for **automating operations**. |
| **Application Layer** | Future applications (web or mobile) interacting via **APIs or direct queries**. |
| **Reporting Layer** | Views, queries, and dashboards for **business insights**. |

---


### **Project Scope**

### **Client Requirements**
- **Customers** register by providing their **name, address, date of birth, and payment preferences** (credit card, PayPal, etc.). They also create a **username and password** for an online portal.
- Customers can **browse products** and **place orders**. The system **validates stock availability** before confirming the order.
- **Orders include order date, total amount, payment status (pending, completed, refunded), and shipment tracking**.
- The company keeps track of **products and inventory**, ensuring that stock levels are updated after purchases.
- **Employees** manage operations in **departments** such as **sales, warehouse, and customer service**.
- **Suppliers** provide **products**, and the system tracks **supplier details, delivery schedules, and purchase orders**.
- Customers can **leave reviews** after purchasing a product.
- If a customer **deactivates their account**, their **order history and details are retained**.

### **Task Details**
- **Design the database** in **3NF normalization**, explaining design decisions.
- Implement the schema using **T-SQL statements in SQL Server**.
- Create **tables for customers, orders, products, suppliers, inventory, employees, and departments**.
- Populate the database with **at least 7 records per table**.
- Implement **constraints for data integrity**, such as:
  - Ensuring **order date is not in the past**.
  - Preventing negative stock levels.
  
### **Part 2: Query Requirements**
1. **Constraints & Data Validation**
   - Add a constraint ensuring **order date cannot be in the past**.
2. **Querying Data**
   - List all **customers who are older than 40 and have placed orders exceeding $5000**.
3. **Stored Procedures & Functions**
   - **Search for a product** by name, returning results sorted by **most recent purchase date**.
   - **Retrieve a customer’s full order and payment history**, if they have an order **today**.
   - **Update an employee’s details** (e.g., job role, department).
   - **Delete completed orders** after a certain period.
4. **Creating a View**
   - Generate a **view** displaying **all previous and current orders**, showing:
     - **Order date, product details, customer name, payment status, supplier name, and employee handling the order**.
     - Include any **customer reviews**.
