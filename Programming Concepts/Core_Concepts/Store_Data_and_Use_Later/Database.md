## Database

- A **Database** is an organized collection of structured data, typically stored electronically in a computer system. Databases are designed to store, retrieve, manage, and update data efficiently. 
- **Database Management Systems (DBMS)** are software systems that allow users to interact with databases, enabling the creation, querying, updating, and administration of the data.

### Key Idea:
- A **Database** stores data in a structured way to facilitate easy access and management. It allows users to store large amounts of data, perform complex queries, and maintain data consistency and integrity.

---

### Types of Databases:

1. **Relational Database**:
   - A **Relational Database** organizes data into **tables** (also called relations), where each table consists of rows and columns. Each row represents a record, and each column represents a field or attribute.
   - **Relational Database Management Systems (RDBMS)** use **Structured Query Language (SQL)** to manage and query data.
   - **Examples**: MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server.

2. **NoSQL Database**:
   - **NoSQL Databases** are non-relational databases designed to handle unstructured or semi-structured data. They offer flexibility in the data model and are often used for handling large volumes of data, such as in big data applications.
   - **Types of NoSQL Databases**:
     - **Document Stores**: Store data as JSON-like documents (e.g., MongoDB, CouchDB).
     - **Key-Value Stores**: Store data as key-value pairs (e.g., Redis, DynamoDB).
     - **Column-Oriented Databases**: Store data in columns instead of rows (e.g., Cassandra, HBase).
     - **Graph Databases**: Store data as nodes and edges, representing relationships (e.g., Neo4j, Amazon Neptune).

3. **In-Memory Database**:
   - An **In-Memory Database (IMDB)** stores data in the system's main memory (RAM) rather than on disk. This makes access extremely fast, but the data may be lost if the system crashes unless backed up.
   - **Examples**: Redis, Memcached, SAP HANA.

4. **Distributed Database**:
   - A **Distributed Database** is a database that is spread across multiple computers or locations. Data is replicated or partitioned across the network, allowing for scalability and fault tolerance.
   - **Examples**: Apache Cassandra, Google Cloud Spanner, Amazon DynamoDB.

5. **Cloud Database**:
   - A **Cloud Database** is a database that runs on cloud platforms like Amazon Web Services (AWS), Microsoft Azure, or Google Cloud. These databases can be managed and scaled easily without on-premises hardware.
   - **Examples**: Amazon RDS, Google Cloud SQL, Azure SQL Database.

---

### Database Structure (Relational Databases):

1. **Tables**:
   - In a relational database, data is stored in tables. A table is a collection of related data entries and consists of **columns** and **rows**.
   - **Columns (Fields)**: Define the attributes of the data (e.g., `name`, `age`, `address`).
   - **Rows (Records)**: Represent individual data entries (e.g., a single person’s details).

   **Example Table (Employees)**:
   | ID  | Name   | Age | Department |
   |-----|--------|-----|------------|
   | 1   | Alice  | 30  | HR         |
   | 2   | Bob    | 25  | Engineering|
   | 3   | Carol  | 28  | Marketing  |

2. **Primary Key**:
   - A **Primary Key** is a unique identifier for each record in a table. No two records can have the same primary key.
   - **Example**: In the `Employees` table, the `ID` column can be the primary key.

3. **Foreign Key**:
   - A **Foreign Key** is a column (or set of columns) that creates a relationship between two tables. It references the primary key of another table.
   - **Example**: In an `Orders` table, the `customer_id` column could be a foreign key referencing the `ID` column in the `Customers` table.

4. **Index**:
   - An **Index** is a database structure that improves the speed of data retrieval operations on a table. It is created on columns that are frequently used in queries (such as a primary key or foreign key).
   
5. **Normalization**:
   - **Normalization** is the process of organizing data to reduce redundancy and dependency by dividing large tables into smaller, related tables.

---

### SQL (Structured Query Language):

- **SQL** is the standard language for managing and querying relational databases. SQL allows you to create, retrieve, update, and delete data in a relational database. 

1. **Basic SQL Operations**:

   - **SELECT**: Retrieves data from a database.
     ```sql
     SELECT * FROM Employees;
     ```

   - **INSERT**: Adds new data into a table.
     ```sql
     INSERT INTO Employees (ID, Name, Age, Department)
     VALUES (4, 'Dave', 35, 'Finance');
     ```

   - **UPDATE**: Modifies existing data in a table.
     ```sql
     UPDATE Employees
     SET Age = 29
     WHERE Name = 'Alice';
     ```

   - **DELETE**: Removes data from a table.
     ```sql
     DELETE FROM Employees
     WHERE ID = 2;
     ```

2. **Joins**:
   - SQL **joins** allow you to combine data from multiple tables based on a related column between them.
   
   **Example (INNER JOIN)**:
   ```sql
   SELECT Orders.OrderID, Customers.Name
   FROM Orders
   INNER JOIN Customers ON Orders.CustomerID = Customers.ID;
   ```

3. **Aggregate Functions**:
   - SQL provides functions to perform calculations on data such as `SUM()`, `COUNT()`, `AVG()`, and `MAX()`.

   **Example**:
   ```sql
   SELECT COUNT(*) FROM Employees;
   ```

---

### NoSQL Databases:

1. **Document-Oriented Databases**:
   - **Document-Oriented Databases** store data in documents, typically in JSON or BSON format. These databases are more flexible than relational databases and are commonly used in applications where the data structure changes frequently.
   - **Example (MongoDB)**:
     ```json
     {
       "_id": "001",
       "name": "Alice",
       "age": 30,
       "department": "HR"
     }
     ```

2. **Key-Value Stores**:
   - **Key-Value Stores** store data as a collection of key-value pairs. Each key is unique, and its associated value can be a string, number, or complex object.
   - **Example (Redis)**:
     ```bash
     SET user:1000 "Alice"
     GET user:1000  # Outputs: "Alice"
     ```

3. **Graph Databases**:
   - **Graph Databases** use nodes, edges, and properties to represent and store data. These databases are optimized for handling relationships between data points.
   - **Example (Neo4j)**:
     ```cypher
     CREATE (Alice:Person {name: "Alice"})-[:WORKS_IN]->(HR:Department {name: "HR"});
     ```

---

### Database Transactions:

- **Transaction**: A transaction is a unit of work performed within a database. Transactions ensure that operations are completed successfully and maintain **ACID** properties:
  - **Atomicity**: Ensures that all operations within a transaction are completed or none of them are.
  - **Consistency**: Ensures that a transaction brings the database from one valid state to another.
  - **Isolation**: Ensures that the operations of one transaction do not interfere with other transactions.
  - **Durability**: Ensures that once a transaction is committed, it will remain so, even in the event of a system failure.

**Example of a Transaction in SQL**:
```sql
BEGIN TRANSACTION;
UPDATE Accounts SET Balance = Balance - 500 WHERE AccountID = 1;
UPDATE Accounts SET Balance = Balance + 500 WHERE AccountID = 2;
COMMIT;
```

---

### Advantages of Databases:

1. **Data Organization**:
   - Databases allow data to be organized in a structured manner, enabling efficient retrieval and management.

2. **Data Integrity and Consistency**:
   - Databases enforce rules like constraints (e.g., primary key, foreign key) to ensure data consistency and integrity.

3. **Scalability**:
   - Databases (especially distributed databases) can handle large amounts of data and scale as the data grows.

4. **Data Security**:
   - Databases support security features such as user permissions, encryption, and access control to protect sensitive information.

5. **Backup and Recovery**:
   - Databases have built-in mechanisms for backing up data and recovering it in case of failure, ensuring data durability.

---

### Disadvantages of Databases:

1. **Complexity**:
   - Setting up and maintaining a database can be complex, especially for large or distributed systems.

2. **Cost**:
   - Depending on the database management system, there can be high costs associated with licensing, hardware, and administrative support.

3. **Performance Overhead**:
   - While databases provide strong consistency and reliability, this can sometimes come at the cost of performance, especially in complex queries or large-scale systems.

---

### Real-World Analogy:
- A **Database** is like a **library**:
   - Just like a library organizes and stores books (data) in shelves (tables) that can be easily retrieved through catalogs (indexes), a database organizes data in tables and provides mechanisms (SQL or NoSQL queries) to retrieve it efficiently.

---

### Related Concepts:
- [[Data Type]]: The type of data stored in a database table (e.g., integers, strings, dates).
- [[SQL]]: The standard language used for querying and managing relational databases.
- [[Normalization]]: The process of structuring a database to reduce redundancy and improve data integrity.

A **Database** is a powerful tool for storing, organizing, and managing large volumes of data. By using databases, businesses and developers can ensure efficient data retrieval, consistency, and scalability, enabling them to build robust applications and systems.