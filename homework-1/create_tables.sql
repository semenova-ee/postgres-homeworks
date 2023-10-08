-- SQL-команды для создания таблиц
CREATE TABLE customers (
  customer_id varchar (5) PRIMARY KEY,
  company_name varchar (50),
  contact_name varchar (50)
);

CREATE TABLE employees (
	employee_id smallint PRIMARY KEY,
	first_name varchar (10),
	last_name varchar (10),
	title varchar (50),
	birth_date date,
	notes text
);
CREATE TABLE orders (
	order_id integer PRIMARY KEY,
	customer_id varchar (5) REFERENCES customers(customer_id),
	employee_id smallint REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar (25)
);