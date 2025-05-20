CREATE DATABASE customer_analytics;
USE customer_analytics;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    signup_date DATE,
    location VARCHAR(100)
);

CREATE TABLE merchants (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(100),
    category VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    merchant_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (merchant_id) REFERENCES merchants(merchant_id)
);

SET GLOBAL local_infile = 1;



