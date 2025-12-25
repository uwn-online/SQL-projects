-- SQLite
/* Question 1: Which countries have the most invoices?*/

SELECT BillingCountry, COUNT(BillingCountry) AS Invoice_Number
FROM Invoice
GROUP BY BillingCountry
ORDER BY Invoice_Number DESC;

/* Question 2: Which city has the best customers? 
We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns the 1 city that has the highest sum of invoice totals. 
Return both the city name and the sum of all invoice totals.*/

SELECT BillingCity, SUM(Total) AS Invoice_Total
FROM Invoice
GROUP BY BillingCity
ORDER BY Invoice_Total DESC
LIMIT 1;


/* Question 3: Who is the best customer?
The customer who has spent the most money will be declared the best customer. 
Build a query that returns the person who has spent the most money. 
Invoice, InvoiceLine, and Customer tables to retrieve this information*/

SELECT FirstName, LastName, sum(Total) AS total_spending
FROM Customer AS c 
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY total_spending DESC
LIMIT 1;

/* Question 4: 
Use your query to return the email, first name, last name, and Genre of all Rock Music listeners.
Return your list ordered alphabetically by email address starting with A.*/
SELECT DISTINCT email AS Email, FirstName AS First_Name,
     LastName AS Last_Name, g.Name AS Genre_Name 
FROM Customer AS c 
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
JOIN InvoiceLine AS il ON il.InvoiceId = i.InvoiceId
JOIN Track AS t ON t.TrackId = il.TrackId
JOIN Genre AS g ON g.GenreId = t.GenreId
WHERE g.Name LIKE 'Rock'
ORDER BY email;


/* Question 5: Who is the best Employee?
The employee who has brought in the most money will be declared the best employee. 
Build a query that returns the person who has brought in the most money. */

SELECT EmployeeId, e.FirstName AS First_Name, e.LastName AS Last_Name,
         e.Title AS Title, ROUND(SUM(Total),2) AS total_revenue
FROM Employee AS e 
    JOIN Customer AS c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice AS i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId
ORDER BY total_revenue DESC
LIMIT 1;

/* Question 6: What is the best performing Genre based on Revenue*/

SELECT g.GenreId, g.Name, ROUND(SUM(il.UnitPrice * il.Quantity),2) AS total_sales
FROM Genre AS g 
JOIN Track AS t ON t.GenreId = g.GenreId
JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY total_sales DESC
;


