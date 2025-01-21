SELECT product_id 
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y'
GROUP BY product_id;
-- 也可以don't group by, 快一点