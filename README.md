# sql-analysis-task4
# SQL Developer Internship - Task 4: Aggregate Functions & Grouping

This repository contains my submission for the fourth SQL task, which focuses on summarizing and analyzing data using aggregate functions.

## Project Summary

The SQL script in this repository performs two main functions:
1.  **Sets up the database:** It creates and populates tables for an online bookstore with sample data.
2.  **Analyzes the data:** It runs a series of queries using aggregate functions (`COUNT`, `SUM`, `AVG`) and clauses (`GROUP BY`, `HAVING`) to generate summary reports from the raw data. For example, it calculates the total number of books per genre and the average price.

The script was tested using DB Fiddle with SQLite.

---

## Interview Questions & Answers

**1. What is GROUP BY?**
The `GROUP BY` clause is used with aggregate functions to group rows that have the same values in specified columns into summary rows. For example, you can group all books by their 'Genre' to count how many books are in each category.

**2. Difference between WHERE and HAVING?**
The `WHERE` clause filters rows *before* any grouping or aggregation is done.The `HAVING` clause filters groups *after* the `GROUP BY` and aggregate functions have been applied. 
**3. How does COUNT(*) differ from COUNT(column)?**
`COUNT(*)` counts the total number of rows in a table.`COUNT(column)` counts the number of rows where the specified `column` is not NULL. 

**4. Can you group by multiple columns?**
Yes, you can list multiple columns in the `GROUP BY` clause (e.g., `GROUP BY Genre, Author`) to create more granular groups. 

**5. What is ROUND() used for?**
The `ROUND()` function is used to round a numeric field to a specified number of decimal places, making results from functions like `AVG()` cleaner and easier to read.

**6. How do you find the highest salary by department?**
You would use `SELECT Department, MAX(Salary) FROM Employees GROUP BY Department;`.

**7. What is the default behavior of GROUP BY?**
By default, `GROUP BY` sorts the results in ascending order of the column(s) it is grouping by, though it's always best practice to add an explicit `ORDER BY` clause if a specific order is needed. 

**8. Explain AVG and SUM.**
`AVG()` is an aggregate function that calculates the average value of a set of numbers.`SUM()` is an aggregate function that calculates the total sum of a set of numbers. 

**9. How to count distinct values?**
You use `COUNT(DISTINCT column_name)` to count the number of unique, non-NULL values in a column.

**10. What is an aggregate function?**
An aggregate function performs a calculation on a set of rows and returns a single summary value. Common examples are `COUNT`, `SUM`, `AVG`, `MAX`, and `MIN`. 
