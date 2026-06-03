SELECT genre, AVG(price) AS average_price
FROM books
GROUP BY genre;