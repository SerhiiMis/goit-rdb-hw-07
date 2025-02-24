-- 1. 
SELECT 
    id AS order_id,
    date AS order_date,
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    DAY(date) AS order_day
FROM orders;

-- 2. 
SELECT 
    id AS order_id,
    date AS order_date,
    DATE_ADD(date, INTERVAL 1 DAY) AS updated_order_date
FROM orders;

-- 3. 
SELECT 
    id AS order_id,
    date AS order_date,
    UNIX_TIMESTAMP(date) AS order_timestamp
FROM orders;

-- 4.
SELECT COUNT(*) AS total_orders
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- 5. 
SELECT 
    id AS order_id,
    date AS order_date,
    JSON_OBJECT('id', id, 'date', date) AS order_json
FROM orders;
