
1 Get all customers and their addresses.

SELECT ("customers"."first_name"),("customers"."last_name"),("addresses"."street"),("addresses"."zip")
FROM customers JOIN "addresses"
ON "customer_id" = "customers"."id";

2 Get all orders and their line items.

SELECT * FROM orders JOIN line_items ON order_id = orders.id;

3 Which warehouses have cheetos?

SELECT (warehouse) FROM warehouse_product 
JOIN products ON warehouse_product.product_id = products.id 
JOIN warehouse ON warehouse_id = warehouse.id
WHERE products.id = 5;

4 Which warehouses have diet pepsi?

SELECT (warehouse) FROM warehouse_product 
JOIN products ON warehouse_product.product_id = products.id 
JOIN warehouse ON warehouse_id = warehouse.id
WHERE products.id = 6;

5 Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT customers.first_name, COUNT(addresses.customer_id) 
FROM customers
JOIN addresses ON addresses.customer_id = customers.id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;

6 How many customers do we have?

SELECT count(id) FROM "customers";

7 How many products do we carry?

SELECT count(id) FROM "products";

8 What is the total available on-hand quantity of diet pepsi?

SELECT SUM(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
WHERE products.id = 6;
