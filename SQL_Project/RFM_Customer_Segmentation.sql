
/***** RFM - Based Customer Segmentation & Business Insights *****/

Create Database ECOMMERCE_RFM
go

use ECOMMERCE_RFM
go

Select * from [dbo].[RFM_Ecommerce_Data]

/*RFM TABLE*/

SELECT Customer_ID,
	MAX(Order_Date) AS Last_Order_Date,
	DATEDIFF(DAY, MAX(Order_Date), 
	(
		SELECT MAX(Order_Date)
			FROM RFM_Ecommerce_Data
			)
			) AS Recency,
	COUNT(Order_ID) AS Frequency,
	Round(SUM(Sales_Amount),0) AS Monetary
FROM [dbo].[RFM_Ecommerce_Data]
GROUP BY Customer_ID

/*CREATING VIEW FOR RFM */

Create VIEW RFM_Base_View
AS
SELECT Customer_ID,
	MAX(Order_Date) AS LAST_ORDER_DATE,
	DATEDIFF(DAY, MAX(Order_Date), (
			SELECT MAX(Order_Date)
			FROM RFM_Ecommerce_Data
			)) AS RECENCY,
	ROUND(SUM(Sales_Amount), 0) AS MONETARY,
	COUNT(Order_ID) AS FREQUENCY
FROM RFM_ECOMMERCE_DATA
GROUP BY Customer_ID

/* RFM BASED CUSTOMER TABLE USING NTILE */

Select *,
NTILE(5) over(order by RECENCY DESC) AS R_Score,
NTILE(5) over(order by FREQUENCY DESC) AS F_Score,
NTILE(5) over(order by MONETARY DESC) AS M_Score
From RFM_Base_View


/* CREATING RFM Scores View */

CREATE VIEW RFM_Scores 
AS
SELECT *,
NTILE(5) Over(Order by RECENCY DESC) AS R_Score,
NTILE(5) Over(Order by FREQUENCY DESC) AS F_Score,
NTILE(5) Over(Order by MONETARY DESC) AS M_Score
FROM RFM_Base_View

/* CONCATING RFM Scores */

SELECT *,
CONCAT(R_Score,F_Score,M_Score) AS RFM_Score
FROM RFM_Scores


/*CREATING THE FINAL VIEW */

CREATE VIEW RFM_SEGMENTATION 
AS
SELECT *,
CONCAT(R_Score,F_Score,M_Score) AS RFM_Score,
CASE 
WHEN [R_Score]>= 4 AND [F_Score]>=4 AND [M_Score] >=4 THEN 'Champions'
WHEN [F_Score]>= 3 AND [M_Score]>= 3 THEN 'Loyal Customers'
WHEN [R_Score]<= 2 AND [F_Score]>= 2 THEN 'At Risk'
WHEN [R_Score]<= 2 AND [F_Score]= 1 THEN 'Lost Customers'
ELSE 'Others'
END AS Customer_Segment
FROM RFM_Scores

select * from [dbo].[RFM_SEGMENTATION]

