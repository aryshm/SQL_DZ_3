SELECT postgres.public.orders.product_name
FROM postgres.public.orders
         JOIN postgres.public.customers ON orders.customer_id = customers.id
WHERE name = :name