SELECT name, 
       position
FROM employees
WHERE (SALARY > 50000)
ORDER BY name;


--- Bonus
SELECT name, 
       position,
       salary
FROM (
     SELECT name,
            position,
            salary
     FROM employees
     ORDER BY salary DESC
)
WHERE ROWNUM <= 3;