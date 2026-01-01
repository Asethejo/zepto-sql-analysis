Zepto SQL Data Analysis Project

## 📌 Project Overview
This project analyzes product and inventory data from Zepto using PostgreSQL.
The goal is to perform data validation, stock analysis, and revenue insights
using SQL queries.

🛠 Tools Used
- PostgreSQL 16
- pgAdmin 4
- SQL

📂 Dataset Description
The dataset contains product-level information including:
- Category
- Product name
- MRP and discounted price
- Discount percentage
- Available quantity
- Stock status
- Product weight

🧱 Table Schema
The data is stored in a table named `zepto`.

 🔍 Analysis Performed
- Row count and data preview
- Stock availability analysis
- NULL value and data quality checks
- Revenue calculation per product
- Category-wise discount analysis
- Identification of low-stock products
- Duplicate record detection
- Indexing for query optimization

🚀 Key Insights
- Identified top revenue-generating products
- Analyzed average discount per category
- Flagged products at risk of stock-out
- Verified data integrity and consistency

📁 Project Files
- `schema.sql` → table creation
- `data_checks.sql` → data validation queries
- `analysis.sql` → business insights queries
- `indexing.sql` → performance optimization

✅ Status
Project completed successfully.

HOW TO RUN?
1. Install **PostgreSQL** and **pgAdmin**
2. Create a database (e.g., `zepto_sql_project`)
3. Open Query Tool and run:
   - `d_schema.sql` (creates table)
4. Import the CSV data into the `zepto` table
5. Verify data:
   ```sql
   SELECT COUNT(*) FROM zepto;
6.Run:

*data_checks.sql

*data_analysis.sql

7.(Optional) Run indexing.sql for performance

⚠️ Challenges Faced & Learnings

1. **Confusion between database and table selection** in pgAdmin, which caused:
   - `relation does not exist` errors
   - Queries returning `0 rows` even though data was imported

2. CSV file imported successfully, but **data was not visible** due to connecting to the **wrong database**

3. Faced **CREATE DATABASE cannot run inside a transaction block** error in pgAdmin  
   - Learned to create databases using the Query Tool outside transactions

4. Ensuring **CSV headers matched table column names exactly**
   - Mismatched column names caused data import failures
   - Fixed by aligning CSV headers with the table schema

5. Key learnings from the project:
   - Verifying the active database connection before running queries
   - Running `SELECT COUNT(*)` after data imports
   - Checking schema (`public`) and confirming table existence



📬 Author
JOTHIKA V 
EAGER TO LEARN  


