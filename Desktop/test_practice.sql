USE sakila;

-- Start transaction
START TRANSACTION;

-- Update customer email (you can change ID and email)
UPDATE customer
SET email = 'practice@email.com'
WHERE customer_id = 1;

-- Check updated value
SELECT customer_id, first_name, email
FROM customer
WHERE customer_id = 1;

-- Rollback (undo the update)
ROLLBACK;

-- Check again (should return original email)
SELECT customer_id, first_name, email
FROM customer
WHERE customer_id = 1;