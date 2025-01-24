SELECT customer_id, SUM(amount) AS total_spent
FROM Orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;

SELECT customer_id, total_spent
FROM (
    SELECT customer_id,
           SUM(amount) OVER (PARTITION BY customer_id) AS total_spent,
           DENSE_RANK() OVER (ORDER BY SUM(amount) OVER (PARTITION BY customer_id) DESC) as rnk
    FROM Orders
) t
WHERE rnk <= 3;
