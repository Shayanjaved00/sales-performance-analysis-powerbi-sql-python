CREATE TABLE sales (
    order_id INT,
    date DATE,
    customer VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price INT
);

SELECT city, SUM(quantity * price) AS revenue
FROM sales
GROUP BY city;
SELECT product, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;