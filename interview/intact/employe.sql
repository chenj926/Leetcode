SELECT e.name, COALESCE(d.dept_name, 'No Dept') AS department
FROM employe e
JOIN department d ON e.dept_id = d.dept_id;