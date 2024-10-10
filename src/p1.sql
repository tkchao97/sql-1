ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

create table employees (
id	     number(3)	   not null,
name         varchar(50)   not null,
position     varchar(50)   not null,  
department   varchar(50)   not null,
salary       number(10,2)  not null,
primary key(id)
);

create table customers (
customer_id   number(4)   not null,
customer_name varchar(50) not null,
city	      varchar(30),
primary key(customer_id)
);

create table inventories (
product_id    number(2)     not null,
product_name  varchar(50)   not null,
quantity      number(2)     not null,
price         number(6,2)  not null,
primary key(product_id)
);

create table orders (
order_id      number(5)    not null,
order_date    date,    
customer_id   number(4)    not null,
total_amount  number(6,2)  not null,
primary key(order_id),
foreign key(customer_id) REFERENCES customers(customer_id)
);

create table sales (
order_id      number(5) not null,
customer_id   number(4) not null,
product_id    number(2) not null,
quantity      number(2) not null,
sale_date     date,
primary key(order_id, customer_id, product_id),
foreign key(order_id) REFERENCES orders(order_id),
foreign key(customer_id) REFERENCES customers(customer_id),
foreign key(product_id) REFERENCES inventories(product_id)
);


INSERT INTO employees (id, name, position, department, salary) VALUES
(101, 'John Doe', 'Software Engineer', 'IT', 55000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(102, 'Jane Smith', 'Project Manager', 'IT', 65000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(103, 'Alice Johnson', 'HR Specialist', 'Human Resources', 40000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(104, 'Bob Brown', 'Sales Executive', 'Sales', 45000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(105, 'Carol White', 'Marketing Coordinator', 'Marketing', 42000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(106, 'David Wilson', 'Data Analyst', 'IT', 50000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(107, 'Eva Green', 'Content Writer', 'Marketing', 48000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(108, 'Frank Black', 'Accountant', 'Finance', 48000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(109, 'Grace Lee', 'Customer Support', 'Customer Service', 35000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(110, 'Henry Adams', 'Operations Manager', 'Operations', 50000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(111, 'Irene Nelson', 'System Administrator', 'IT', 42000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(112, 'Jack Turner', 'Network Engineer', 'IT', 33000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(113, 'Karen Scott', 'DevOps Engineer', 'IT', 36000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(114, 'Larry King', 'Recruiter', 'Human Resources', 31000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(115, 'Mona Lisa', 'HR Manager', 'Human Resources', 50000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(116, 'Nina Perez', 'Benefits Coordinator', 'Human Resources', 32000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(117, 'Oscar Wilde', 'Sales Manager', 'Sales', 40000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(118, 'Paula Green', 'Sales Associate', 'Sales', 40000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(119, 'Quentin Blake', 'Account Manager', 'Sales', 50000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(120, 'Rachel Adams', 'SEO Specialist', 'Marketing', 51000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(121, 'Sam Harris', 'Social Media Manager', 'Marketing', 43000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(122, 'Tina Fey', 'Brand Manager', 'Marketing', 45000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(123, 'Uma Thurman', 'Financial Analyst', 'Finance', 52000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(124, 'Victor Hugo', 'Controller', 'Finance', 65000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(125, 'Wendy Moore', 'Payroll Specialist', 'Finance', 40000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(126, 'Xander Cage', 'Customer Service Manager', 'Customer Service', 50000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(127, 'Yara Shahidi', 'Technical Support', 'Customer Service', 38000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(128, 'Zachary Lee', 'Customer Service Representative', 'Customer Service', 35000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(129, 'Aaron Paul', 'Logistics Coordinator', 'Operations', 32000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(130, 'Bella Swan', 'Operations Analyst', 'Operations', 48000.00);
INSERT INTO employees (id, name, position, department, salary) VALUES
(131, 'Chris Evans', 'Supply Chain Manager', 'Operations', 53000.00);


INSERT INTO customers (customer_id, customer_name, city) VALUES
(1001, 'Alice Johnson', 'New York');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1002, 'Bob Smith', 'Los Angeles');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1003, 'Charlie Davis', 'Chicago');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1004, 'Diana Prince', 'San Francisco');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1005, 'Edward Harris', 'Houston');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1006, 'Fiona Gallagher', 'Las Vegas');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1007, 'George Thomas', 'New York');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1008, 'Hannah Martin', 'Boston');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1009, 'Ian Curtis', 'Seattle');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1010, 'Julia Roberts', 'New York');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1011, 'Kevin Brown', 'Denver');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1012, 'Laura Wilson', 'Miami');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1013, 'Michael Scott', 'Philadelphia');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1014, 'Natalie Portman', 'Phoenix');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1015, 'Oliver Twist', 'Dallas');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1016, 'Patricia Green', 'Atlanta');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1017, 'Quincy Jones', 'Detroit');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1018, 'Rebecca Black', 'Minneapolis');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1019, 'Samuel Lee', 'San Diego');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1020, 'Tina Turner', 'New York');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1021, 'Uma Thurman', 'Orlando');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1022, 'Victor Stone', 'Austin');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1023, 'Wendy Darling', 'Portland');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1024, 'Xavier Woods', 'Nashville');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1025, 'Yvonne Strahovski', 'Baltimore');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1026, 'Zachary Taylor', 'Las Vegas');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1027, 'Amanda Clark', 'Cleveland');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1028, 'Brian O Connor', 'New York');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1029, 'Catherine Zeta', 'Columbus');
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1030, 'Daniel Radcliffe', 'Charlotte');

INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(1, 'Laptop', 99, 999.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(2, 'Smartphone', 66, 699.50);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(3, 'Tablet', 70, 349.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(4, 'Monitor', 8, 199.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(5, 'Keyboard', 100, 29.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(6, 'Mouse', 100, 19.50);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(7, 'Printer', 50, 149.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(8, 'External Hard Drive', 40, 89.99);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(9, 'USB Flash Drive', 100, 15.00);
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(10, 'Wireless Headphones', 40, 120.00);

INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10001, '01-01-2024', 1001, 999.99);
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES 
(10002, '05-01-2024', 1002, 249.48);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10003, '11-01-2024', 1003, 1049.48);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10004, '21-01-2024', 1004, 699.98);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10005, '30-01-2024', 1005, 60.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES 
(10006, '03-02-2024', 1006, 819.50); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10007, '06-02-2024', 1007, 1395.00);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10008, '10-02-2024', 1008, 719.92);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10009, '15-02-2024', 1009, 5247.40);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10010, '22-02-2024', 1010, 999.95);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10011, '27-02-2024', 1002, 1999.98);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10012, '01-03-2024', 1011, 1049.49);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10013, '04-03-2024', 1012, 2999.97);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10014, '06-03-2024', 1004, 699.98);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10015, '10-03-2024', 1013, 229.98);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10016, '16-03-2024', 1014, 344.95); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10017, '21-03-2024', 1015, 239.98);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10018, '22-03-2024', 1008, 2400.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10019, '25-03-2024', 1016, 499.99);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10020, '01-04-2024', 1001, 4749.92);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10021, '06-04-2024', 1017, 899.49);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10022, '11-04-2024', 1018, 59.98); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10023, '19-04-2024', 1013, 4999.95);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10024, '24-04-2024', 1019, 292.50);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10025, '29-04-2024', 1020, 389.97);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10026, '01-05-2024', 1010, 149.95);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10027, '02-05-2024', 1021, 549.98);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10028, '08-05-2024', 1022, 315.00); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10029, '11-05-2024', 1023, 195.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10030, '15-05-2024', 1024, 389.97);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10031, '21-05-2024', 1006, 2999.97);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10032, '02-06-2024', 1025, 299.90);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10033, '07-06-2024', 1026, 1399.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10034, '09-06-2024', 1004, 439.98);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10035, '11-06-2024', 1005, 5999.94);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10036, '12-06-2024', 1027, 97.50); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10037, '22-06-2024', 1007, 449.97);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10038, '07-07-2024', 1008, 75.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10039, '14-07-2024', 1028, 589.99);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10040, '20-07-2024', 1029, 195.00);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10041, '20-07-2024', 1030, 89.97);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10042, '22-07-2024', 1018, 1749.95); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10043, '06-08-2024', 1022, 1089.98);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10044, '10-08-2024', 1002, 259.97);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10045, '11-08-2024', 1011, 39.00);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10046, '28-08-2024', 1016, 1049.49);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10047, '08-09-2024', 1005, 1999.98);   
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10048, '19-09-2024', 1018, 297.49); 
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10049, '20-09-2024', 1025, 449.97);  
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(10050, '30-09-2024', 1001, 4699.94);  

INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10001, 1001, 1, 1, '01-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10002, 1002, 4, 1, '05-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10002, 1002, 5, 1, '05-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10002, 1002, 6, 1, '05-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10003, 1003, 1, 1, '11-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10003, 1003, 5, 1, '11-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10003, 1003, 6, 1, '11-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10004, 1004, 3, 2, '21-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10005, 1005, 9, 4, '30-01-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10006, 1006, 2, 1, '03-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10006, 1006, 10, 1, '03-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10007, 1007, 6, 10, '06-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10007, 1007, 10, 10, '06-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10008, 1008, 8, 8, '10-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10009, 1009, 1, 5, '15-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10009, 1009, 5, 5, '15-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10009, 1009, 6, 5, '15-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10010, 1010, 4, 5, '22-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10011, 1002, 1, 2, '27-02-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10012, 1011, 2, 1, '01-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10012, 1011, 3, 1, '01-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10013, 1012, 1, 3, '04-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10014, 1004, 3, 2, '06-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10015, 1013, 4, 1, '10-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10015, 1013, 5, 1, '10-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10016, 1014, 6, 10, '16-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10016, 1014, 5, 5, '16-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10017, 1015, 7, 1, '21-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10017, 1015, 8, 1, '21-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10018, 1008, 10, 20, '22-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10019, 1016, 3, 1, '25-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10019, 1016, 9, 10, '25-03-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10020, 1001, 1, 3, '01-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10020, 1001, 3, 5, '01-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10021, 1017, 2, 1, '06-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10021, 1017, 4, 1, '06-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10022, 1018, 5, 2, '11-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10023, 1013, 1, 5, '19-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10024, 1019, 6, 15, '24-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10025, 1020, 4, 1, '29-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10025, 1020, 7, 2, '29-04-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10026, 1010, 5, 5, '01-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10027, 1021, 3, 1, '02-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10027, 1021, 4, 1, '02-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10028, 1022, 9, 5, '08-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10028, 1022, 10, 2, '08-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10029, 1023, 6, 10, '11-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10030, 1024, 7, 2, '15-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10030, 1024, 8, 1, '15-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10031, 1006, 1, 3, '21-05-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10032, 1025, 5, 10, '02-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10033, 1026, 2, 2, '07-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10034, 1004, 3, 1, '09-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10034, 1004, 8, 1, '09-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10035, 1005, 1, 6, '11-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10036, 1027, 6, 5, '12-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10037, 1007, 7, 3, '22-06-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10038, 1008, 9, 5, '07-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10039, 1028, 3, 1, '14-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10039, 1028, 10, 2, '14-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10040, 1029, 6, 10, '20-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10041, 1030, 5, 3, '20-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10042, 1018, 3, 5, '22-07-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10043, 1022, 1, 1, '06-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10043, 1022, 8, 1, '06-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10044, 1002, 4, 1, '10-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10044, 1002, 5, 2, '10-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10045, 1011, 6, 2, '11-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10046, 1016, 2, 1, '28-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10046, 1016, 3, 1, '28-08-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10047, 1005, 1, 2, '08-09-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10048, 1018, 4, 1, '19-09-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10048, 1018, 6, 5, '19-09-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10049, 1025, 7, 3, '20-09-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10050, 1001, 1, 4, '30-09-2024');
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(10050, 1001, 3, 2, '30-09-2024');


