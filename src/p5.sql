SELECT department, 
       ROUND(AVG(salary),2) AS average_salary
FROM employees
GROUP BY department
ORDER BY department;


--- Bonus
WITH MaxSalaries AS (
    SELECT department, 
           MAX(salary) AS highest_salary
    FROM employees
    GROUP BY department
)
SELECT e.department,
       e.name,
       e.salary
FROM employees e
JOIN MaxSalaries ms 
ON (e.department = ms.department) AND 
   (e.salary = ms.highest_salary)
ORDER BY department;

