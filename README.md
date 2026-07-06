# Company Management Database

## Project Description

The Company Management Database project demonstrates advanced MySQL concepts by managing employee and project information. It includes database creation, table creation, CRUD operations, complex SQL queries, joins, aggregate functions, views, stored procedures, transactions, indexing, and subqueries.

## Database Name

CompanyManagementDB

## Features

- Create Database
- Create Employee Table
- Create Project Table
- Insert Employee Records
- Insert Project Records
- Update Records
- Delete Records
- Retrieve Data using SELECT
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- GROUP BY
- HAVING
- Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
- Subqueries
- EXISTS, ANY, ALL
- ORDER BY
- LIKE
- IN
- BETWEEN
- Create VIEW
- Create INDEX
- Stored Procedure
- Transaction Management (COMMIT & ROLLBACK)
- Foreign Key Relationship

## Database Schema

### Employee Table

| Column | Data Type |
|---------|-----------|
| emp_id | INT (Primary Key) |
| emp_name | VARCHAR(50) |
| department | VARCHAR(50) |
| salary | DECIMAL(10,2) |
| city | VARCHAR(50) |

### Project Table

| Column | Data Type |
|---------|-----------|
| project_id | INT (Primary Key) |
| project_name | VARCHAR(50) |
| emp_id | INT (Foreign Key) |
| budget | DECIMAL(10,2) |

## Technologies Used

- MySQL 8.x
- MySQL Workbench
- SQL
- GitHub

## How to Run

1. Open MySQL Workbench.
2. Create a new SQL tab.
3. Open the `CompanyManagementDB.sql` file.
4. Execute all SQL statements.
5. Verify the output using the SELECT queries.

## Sample Complex Queries

- INNER JOIN Employee and Project tables
- LEFT JOIN
- RIGHT JOIN
- GROUP BY with HAVING
- Aggregate Functions
- Subqueries
- EXISTS
- ANY
- ALL
- Views
- Stored Procedures
- Transactions
- Indexes

## Project Structure

CompanyManagementDB/
│── CompanyManagementDB.sql
└── README.md

## Learning Outcomes

- Understand relational database design
- Perform CRUD operations
- Work with joins and subqueries
- Optimize queries using indexes
- Create reusable stored procedures
- Manage transactions using COMMIT and ROLLBACK
- Apply aggregate functions and grouping techniques

## Author

**Aditi Shirbhate**

GitHub: https://github.com/YourGitHubUsername
