CREATE TABLE customers
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    age INT,
    phone_number CHAR(20)
);
CREATE TABLE postgres.public.orders
(
    id SERIAL PRIMARY KEY,
    date TIMESTAMP,
    customer_id INT NOT NULL,
    product_name VARCHAR(20) NOT NULL,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES postgres.public.customers (id)
);