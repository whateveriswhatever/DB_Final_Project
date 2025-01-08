/* Question 1: How many customers do we have by gender, and what's their count? */

/* Question 2: What are the 5 cheapest products in our store and their current quantity in stock? */




/* Cau : Những khách hàng đã chi tiêu nhiều nhất trong năm qua là ai?  */
SELECT
	c.Name,
	c.Phone,
	c.Address,
	SUM(cp.Total_Purchased * p.Price * 2538496) AS Total_Spent
FROM
	Customer c
JOIN
	Customer_Products cp ON c.ID = cp.Customer_ID
JOIN
	Products p ON cp.Product_ID = p.Product_ID
WHERE
	YEAR(cp.Purchased_Date) = 2024
GROUP BY
	c.Name, c.Phone, c.Address
ORDER BY
	Total_Spent DESC;

/* Cau : Danh sách khách hàng sống ở một thành phố cụ thể (ví dụ: Hà Nội) */
SELECT *
FROM Customer
WHERE Address LIKE '%Hanoi%';



/* Cau : Sản phẩm nào có giá trị tồn kho cao nhất (giá x số lượng)? */
SELECT TOP (1)
	Product_ID,
	Product_Name,
	Price,
	Quantity,
	(Price * Quantity) AS Inventory_Value
FROM Products
ORDER BY Inventory_Value DESC;

/* Cau :  */

/* Cau 7: Tổng doanh thu hàng tháng trong năm hiện tại */
SELECT 
    MONTH(Purchased_Date) AS Month,
    SUM(p.Price * cp.Total_Purchased) AS Total_Revenue,
    COUNT(cp.Transaction_ID) AS Number_Of_Transactions
FROM
    Customer_Products cp 
JOIN
    Products p ON cp.Product_ID = p.Product_ID
WHERE
    YEAR(Purchased_Date) = 2024
GROUP BY
    MONTH(Purchased_Date)
ORDER BY
    Month;


/* Question 8: What's the gender distribution of customers buying products priced above the average product price, and what's their preferred payment method? */
WITH AvgPriceProducts AS (
    SELECT AVG(Price) AS AvgPrice
    FROM Products
)
SELECT 
    CASE 
        WHEN c.Gender = 1 THEN 'Female'
        ELSE 'Male'
    END AS Gender,
    cp.Pay_Method,
    COUNT(DISTINCT c.ID) AS Number_of_Customers,
    COUNT(*) AS Number_of_Purchases,
    SUM(cp.Total_Purchased) AS Total_Items_Purchased
FROM Customer c
JOIN Customer_Products cp ON c.ID = cp.Customer_ID
JOIN Products p ON cp.Product_ID = p.Product_ID
CROSS JOIN AvgPriceProducts ap
WHERE p.Price > ap.AvgPrice
GROUP BY 
    c.Gender,
    cp.Pay_Method
ORDER BY Gender, Number_of_Purchases DESC;

/* Question 9: Which products have been purchased using Credit Card?*/
SELECT DISTINCT
    p.Product_Name,
    p.Price,
    cp.Pay_Method,
    cp.Purchased_Date
FROM Products p
JOIN Customer_Products cp ON p.Product_ID = cp.Product_ID
WHERE cp.Pay_Method = 'Credit Card'
ORDER BY cp.Purchased_Date DESC;

/* Question 10: Who are our customers from Da Nang city and what have they purchased?*/
SELECT 
    c.Name AS Customer_Name,
    c.Phone,
    p.Product_Name,
    p.Price,
    cp.Total_Purchased,
    cp.Purchased_Date
FROM Customer c
JOIN Customer_Products cp ON c.ID = cp.Customer_ID
JOIN Products p ON cp.Product_ID = p.Product_ID
WHERE c.Address LIKE '%Da Nang%'
ORDER BY cp.Purchased_Date DESC;
