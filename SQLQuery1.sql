
USE hotel_cleaned_project;
GO


-- Check first 10 rows
SELECT TOP 10 * FROM hotel_cleaned;
GO

-- Check total rows
SELECT COUNT(*) AS total_rows FROM hotel_cleaned;
GO

-- 1. Total number of bookings in the dataset
SELECT COUNT(*) AS total_bookings 
FROM hotel_cleaned;

-- 2. Number of bookings by hotel type
SELECT hotel, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY hotel;

-- 3. Cancellation rate for each hotel type
SELECT hotel, 
       ROUND(AVG(CAST(is_canceled AS FLOAT)) * 100, 2) AS cancellation_rate
FROM hotel_cleaned
GROUP BY hotel;

-- 4. Number of bookings by country
SELECT country, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY country
ORDER BY number_of_bookings DESC;

-- 5. Top 10 countries with the highest number of bookings
SELECT TOP 10 country, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY country
ORDER BY number_of_bookings DESC;

-- 6. Number of bookings for each customer type
SELECT customer_type, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY customer_type
ORDER BY number_of_bookings DESC;

-- 7. Average lead time for bookings
SELECT ROUND(AVG(CAST(lead_time AS FLOAT)), 2) AS avg_lead_time
FROM hotel_cleaned;

-- 8. Average daily rate by hotel type
SELECT hotel, ROUND(AVG(adr), 2) AS avg_daily_rate
FROM hotel_cleaned
GROUP BY hotel;

-- 9. Total number of bookings by month
SELECT arrival_date_month, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY arrival_date_month
ORDER BY number_of_bookings DESC;

-- 10. Number of bookings by market segment
SELECT market_segment, COUNT(*) AS number_of_bookings
FROM hotel_cleaned
GROUP BY market_segment
ORDER BY number_of_bookings DESC;