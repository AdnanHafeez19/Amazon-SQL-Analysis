-- Amazon SQL Analysis

-- 1. List all products with a discounted price below ₹500.

SELECT 
    product_name
FROM
    practice.mytable
WHERE
    discounted_price < 500;

-- 2. Find products with a discount percentage of 50% or more.

SELECT 
    product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage >= 0.50
ORDER BY discount_percentage DESC;

-- 3. Retrieve all products where the name contains the word "Cable."

SELECT 
    product_name
FROM
    mytable
WHERE
    product_name LIKE '%Cable%';

-- 4. Display the difference between the average of the actual price and the discounted price for each product.

SELECT 
    product_name,
    (AVG(actual_price) - AVG(discounted_price)) AS Difference
FROM
    mytable
GROUP BY product_name;

-- 5. Query reviews that mention "fast charging" in their content.

SELECT 
    review_content
FROM
    mytable
WHERE
    review_content LIKE '%fast charging%';

-- 6.Identify products with a discount percentage between 20% and 40%.

SELECT 
    product_name
FROM
    mytable
WHERE
    discount_percentage BETWEEN 0.20 AND 0.40;

-- 7. Find products that have an actual price above ₹1,000 and are rated 4 stars or above.

SELECT 
    product_name, rating, actual_price
FROM
    mytable
WHERE
    actual_price > 1000 AND rating >= 4
ORDER BY actual_price desc , rating desc;

 -- 8. Find products where the discounted price ends with a 9
 
 SELECT 
    product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price LIKE '%9';
    
-- 9. Display review contents that contains words like worst, waste, poor, or not good.

SELECT review_content
FROM mytable
WHERE Review_content LIKE '%worst%'
   OR Review_content LIKE '%waste%'
   OR Review_content LIKE '%poor%'
   OR Review_content LIKE '%not good%';

-- 10. List all products where the category includes "Accessories."

SELECT 
    product_name, category
FROM
    mytable
WHERE
    category LIKE '%Accessories%'
ORDER BY product_name;



 select * from mytable;
