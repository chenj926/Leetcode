SELECT prd.product_name, sales.year, sales.price
FROM Sales sales
JOIN Product prd ON sales.product_id = prd.product_id
GROUP BY prd.product_name, sales.year, sales.price;