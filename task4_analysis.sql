-- PART 1: SETUP - CREATE TABLES AND INSERT DATA
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL DEFAULT 0
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Arav', 'Mehta', 'arav.m@example.com'),
(2, 'Arnva', 'Joshi', 'arnav.j@example.com'),
(3, 'Vishu', 'Gupta', 'vishu.g@example.com');

INSERT INTO Books (BookID, Title, Author, Genre, Price, StockQuantity) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Adventure', 12.99, 60),
(102, 'A Suitable Boy', 'Vikram Seth', 'Novel', 19.99, 25),
(103, '1984', 'George Orwell', 'Dystopian', 9.50, 80),
(104, 'Malgudi Days', 'R. K. Narayan', 'Fiction', 11.00, 45),
(105, 'The White Tiger', 'Aravind Adiga', 'Novel', 14.00, 30),
(106, 'Pride and Prejudice', 'Jane Austen', 'Romance', 8.99, 55),
(107, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 25.00, 20),
(108, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 13.50, 50);


-- PART 2: AGGREGATE QUERIES (This is the main part of Task 4)

-- Query 1: How many books are in our bookstore?
-- COUNT(*) counts the total number of rows in the table.
SELECT COUNT(*) AS TotalNumberOfBooks FROM Books;

-- Query 2: What is the total value of all books in stock?
-- SUM() adds up all the values in a column.
SELECT SUM(Price * StockQuantity) AS TotalStockValue FROM Books;

-- Query 3: What is the average price of a book in our store?
-- AVG() calculates the average value. ROUND() makes the result look neat.
SELECT ROUND(AVG(Price), 2) AS AverageBookPrice FROM Books;

-- Query 4: How many books do we have for each genre?
-- GROUP BY categorizes the rows by Genre before counting them.
SELECT Genre, COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY Genre;

-- Query 5: Which genres have more than 1 book?
-- HAVING filters the results AFTER they have been grouped.
SELECT Genre, COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY Genre
HAVING COUNT(*) > 1;

-- Query 6: What is the average price for books in each genre?
-- We can use multiple aggregate functions with GROUP BY.
SELECT Genre,
       COUNT(*) AS NumberOfBooks,
       ROUND(AVG(Price), 2) AS AveragePrice
FROM Books
GROUP BY Genre
ORDER BY AveragePrice DESC;

