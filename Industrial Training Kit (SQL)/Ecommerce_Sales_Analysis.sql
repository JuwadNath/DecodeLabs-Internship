CREATE DATABASE ecommerce_sales_analysis
SELECT *FROM [ecommerce order]

-- CHECKING DUPLICATE

SELECT *FROM [ecommerce order]
SELECT OrderID,COUNT(*)
FROM [ecommerce order]
GROUP BY OrderID
HAVING COUNT(*) > 1

-- REMOVING DUPLICATE

SELECT *FROM [ecommerce order]
DELETE o1
FROM [ecommerce order] o1
JOIN [ecommerce order] o2
ON o1.OrderID = o2.OrderID
AND o1.CustomerID = o2.CustomerID
AND o1.OrderID > o2.OrderID;

 -- REMOVING BLANK ROWS
 
 SELECT*
 FROM [ecommerce order]
 WHERE CouponCode IS NULL
 OR CouponCode = 'empty'

 UPDATE [ecommerce order]
 SET CouponCode = 'No Coupon Code'
 WHERE CouponCode IS NULL
 OR CouponCode = 'empty'

--CHECKING MISSING VALUES 

 SELECT *FROM [ecommerce order]
 SELECT *
 FROM [ecommerce order]
 WHERE OrderID is Null
 OR CustomerID is Null
 OR Product is Null;

--COUNTING MISSING VALUES

SELECT
 SUM(CASE WHEN OrderID IS NULL THEN 1 ELSE 0 END) AS MIssing_OrderID,
 SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS Missing_CustomerID,
 SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS Missing_Product
FROM [ecommerce order]
 
 --REMOVING LEADING AND TRAILING SPACES

 UPDATE [ecommerce order]
 SET OrderStatus = TRIM(Orderstatus);
 UPDATE [ecommerce order]
 SET Product = TRIM(Product);
 UPDATE [ecommerce order]
 SET PaymentMethod = TRIM(PaymentMethod);
 UPDATE [ecommerce order]
 SET ReferralSource = TRIM(ReferralSource);

-- STANDARDIZING TEXT

 UPDATE [ecommerce order]
 SET PaymentMethod = UPPER(PaymentMethod)

-- VALIDATING QUANTITY

 SELECT*
 FROM [ecommerce order]
 WHERE Quantity < 0;

 -- VALIDATING ITEMS IN CART

 SELECT*
 FROM [ecommerce order]
 WHERE Quantity > ItemsInCart;

 -- CHECKING FOR INCONSISTENCY

  SELECT*
  FROM [ecommerce order]
  WHERE TotalPrice <> Quantity * UnitPrice;

 -- CHECKING FOR OUTLIERS

-- REVENUE

SELECT*
FROM [ecommerce order]
ORDER BY TotalPrice DESC;

-- QUANTITY

SELECT*
FROM [ecommerce order]
ORDER BY Quantity DESC;

-- EXTRACTING YEAR MONTH AND ORDER DATE

-- YEAR

SELECT
Date,
Year(Date) AS Order_Year
FROM [ecommerce order];

-- MONTH

SELECT
Date,
DateName(Month,Date) AS Month
FROM [ecommerce order];

 -- ADDING OF YEAR AND MONTH INTO THE TABLE

ALTER TABLE [ecommerce order]
ADD Order_Year INT, 
Order_Month Varchar(50)

UPDATE [ecommerce order]
SET Order_Year = Year(Date),
Order_Month = DateName(Month,Date);

SELECT Date,Order_Month,
Order_Year
FROM [ecommerce order]

SELECT *FROM [ecommerce order]
 -- QUERIES 
 -- DISPALY ALL RECORDS


 -- SORTING 

-- SORT BY PRODUCT PRICE

SELECT Product,PaymentMethod,CouponCode,Quantity,UnitPrice
FROM [ecommerce order]
ORDER BY UnitPrice DESC

-- SORT BY PRICE VALUE

SELECT Product,PaymentMethod,ReferralSource,Quantity,TotalPrice
FROM [ecommerce order]
ORDER BY TotalPrice DESC

-- SORT BY YEAR AND MONTH

SELECT Product,ReferralSource,Quantity,OrderStatus,Order_Year,Order_Month
FROM[ecommerce order]
ORDER BY Order_Year,Order_Month

	FILTERING
-- FILTER BY PENDING

SELECT OrderID,Product,OrderStatus,UnitPrice,TotalPrice
FROM [ecommerce order]
WHERE OrderStatus = 'Pending'

-- FILTER BY CANCELLED ORDER

SELECT OrderID,Product,PaymentMethod,OrderStatus,TotalPrice
FROM [ecommerce order]
WHERE OrderStatus = 'Cancelled'

--FILTER BY ONLINE PAYMENT
SELECT OrderID, Product,PaymentMethod,OrderStatus,TotalPrice
FROM [ecommerce order] 
WHERE PaymentMethod = 'ONLINE'

--FILTER BY CASH
SELECT OrderID,Product, PaymentMethod, OrderStatus, TotalPrice
FROM [ecommerce order]
WHERE PaymentMethod = 'CASH'

--FILTER BY CREDIT CARD
SELECT OrderID, Product, PaymentMethod, OrderStatus, TotalPrice
FROM [ecommerce order]
WHERE PaymentMethod = 'CREDIT CARD'

-- FILTER BY GIFT CARD

SELECT OrderID, Product,PaymentMethod,OrderStatus,TotalPrice
FROM [ecommerce order]
WHERE PaymentMethod = 'GIFT CARD'
 
-- FILTER BY DEBIT CARD

SELECT OrderID,Product,PaymentMethod,OrderStatus,TotalPrice
FROM [ecommerce order]
WHERE PaymentMethod = 'DEBIT CARD'

-- FILTER BY FACEBOOK

SELECT OrderID,Product,PaymentMethod,ReferralSource,TotalPrice
FROM [ecommerce order]
WHERE ReferralSource = 'Facebook'

-- FILTER BY INSTAGRAM

SELECT OrderID,Product,PaymentMethod,ReferralSource,TotalPrice
FROM [ecommerce order]
WHERE ReferralSource = 'Instagram'

-- AGGREGATE FUNCTIONS
 
 -- TOTAL REVENUE
 
 SELECT SUM(TotalPrice) AS Total_Revenue
 FROM [ecommerce order]
  
-- AVERAGE ORDER VALUE 

SELECT AVG(TotalPrice) AS Averege_Order_Value
FROM [ecommerce order]

-- TOTAL NUMBER OF ORDER 

SELECT COUNT(OrderID) AS Total_Order
FROM [ecommerce order]

--TOTAL QUANTITY ORDER 

SELECT SUM(Quantity) AS Total_Quatity
FROM [ecommerce order]

-- AVERAGE QUANTITY ORDER 

SELECT AVG(Quantity) AS Average_Quantity
FROM [ecommerce order]


-- HIGHEST AND LOWEST PRODUCT

SELECT Product,Quantity,PaymentMethod,OrderStatus,CouponCode,ReferralSource,TotalPrice
FROM [ecommerce order]
WHERE TotalPrice = (SELECT MAX(TotalPrice) 
FROM [ecommerce order]) -- Highest

SELECT Product,Quantity,PaymentMethod,OrderStatus,CouponCode,ReferralSource,TotalPrice
FROM [ecommerce order]
WHERE TotalPrice = (SELECT MIN(TotalPrice)
FROM [ecommerce order]) --lowest

-- GROUP BY, ORDER BY, HAVING AND CASE CLAUSE

-- REVENUE BY PRODUCT

SELECT Product,
SUM(TotalPrice) AS Revenue 
FROM [ecommerce order]
GROUP BY Product
ORDER BY Revenue DESC;

-- REVENUE BY REFERRAL SOURCE
SELECT ReferralSource,
SUM(TotalPrice) AS Revenue
FROM [ecommerce order]
GROUP BY ReferralSource 
ORDER BY Revenue DESC

-- REVENUE BY PAYMENTMETHOD

SELECT PaymentMethod,
SUM(TotalPrice) AS Revenue
FROM [ecommerce order]
GROUP BY PaymentMethod
ORDER BY Revenue DESC


-- MONTHLY REVENUE TREND

SELECT 
Order_year,
Order_Month,
SUM(TotalPrice) AS Monthly_Revenue
FROM [ecommerce order]
GROUP BY
Order_Year,
Order_Month
ORDER BY
Order_Year,
CASE Order_Month
 WHEN 'January' THEN 1
 WHEN 'February' THEN 2
 WHEN 'March' THEN 3
 WHEN 'April' THEN 4
 WHEN 'May' THEN 5
 WHEN 'June' THEN 6
 WHEN 'July' THEN 7
 WHEN 'August' THEN 8
 WHEN 'September' THEN 9
 WHEN 'October' THEN 10
 WHEN 'November' THEN 11
 WHEN 'December' THEN 12
END;


-- TOP 5 PRODUCTS BY REVENUE

SELECT TOP 5 PRODUCT,
Product,
SUM(TotalPrice) AS Revenue
FROM [ecommerce order]
GROUP BY Product
ORDER BY Revenue DESC

 -- PRODUCT WITH REVENUE GREATER THAN 150000

SELECT Product,
SUM(TotalPrice) AS Revenue
FROM [ecommerce order]
GROUP BY Product
HAVING SUM(TotalPrice) > 150000













































 

