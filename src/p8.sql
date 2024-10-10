CREATE INDEX department_salary ON employees(department, salary);

--- This will help to find specific department and salary quickly as it help narrow the records more quickly without scanning the entire table.