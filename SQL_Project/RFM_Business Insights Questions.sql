

/***** RFM - Based Customer Segmentation & Business Insights *****/


USE ECOMMERCE_RFM
GO

/* =========================================================
BUSINESS QUESTION 1:
Customer Segment Distribution Analysis
Objective:
Identify the number of customers in each segment.
========================================================= */
SELECT
    Customer_Segment,
COUNT(Customer_ID) AS Customer_count

FROM RFM_Segmentation

GROUP BY Customer_Segment

ORDER BY Customer_count DESC


/* =========================================================
BUSINESS QUESTION 2:
Revenue Contribution by Customer Segment
Objective:
Analyze which customer segments generate the highest revenue.
========================================================= */
SELECT Customer_Segment,
		SUM(Monetary) AS Total_Revenue

FROM RFM_Segmentation

GROUP BY Customer_Segment

ORDER BY Total_Revenue DESC


/* =========================================================
BUSINESS QUESTION 3:
Average Spending Analysis by Segment
Objective:
Determine average customer spending behavior across segments.
========================================================= */
SELECT Customer_Segment,
		ROUND(AVG(Monetary),0) AS Avg_Spent

FROM RFM_Segmentation

GROUP BY Customer_Segment

ORDER BY Avg_Spent DESC


/* =========================================================
BUSINESS QUESTION 4:
Top 10 High-Value Customers
Objective:
Identify the highest revenue-generating customers.
========================================================= */
SELECT  TOP 10 
		Customer_ID,
		Monetary,
		Frequency,
		Customer_Segment
			
FROM RFM_Segmentation

ORDER BY Monetary DESC


/* =========================================================
BUSINESS QUESTION 5:
At Risk Customers Analysis
Objective:
Identify valuable customers who are at risk of churn.
========================================================= */
SELECT   
		Customer_ID,
		Monetary,
		Frequency,
		Customer_Segment
			
FROM RFM_Segmentation

WHERE Customer_Segment = 'At Risk'

ORDER BY Recency DESC


/* =========================================================
BUSINESS QUESTION 6:
Lost Customers Analysis
Objective:
Analyze inactive customers with declining engagement.
========================================================= */
SELECT   
		Customer_ID,
		Monetary,
		Frequency,
		Customer_Segment
			
FROM RFM_Segmentation

WHERE Customer_Segment = 'Lost Customers'

ORDER BY Recency DESC


/* =========================================================
BUSINESS QUESTION 7:
Segment-wise Customer Behavior Analysis
Objective:
Compare customer purchasing behavior across segments.
========================================================= */
SELECT 
		Customer_Segment,

		ROUND(AVG(Recency),0) AS Avg_Recency,

		ROUND(AVG(Frequency),0) AS Avg_Frequency,

		ROUND(AVG(Monetary),0) AS Avg_Monetary

FROM RFM_Segmentation

GROUP BY Customer_Segment


/* =========================================================
BUSINESS QUESTION 8:
Customer Revenue Ranking
Objective:
Rank customers based on monetary contribution.
========================================================= */
SELECT 
		Customer_ID,

		Monetary,Customer_Segment,

		RANK() OVER (ORDER BY Monetary DESC) AS Customer_Rank

FROM RFM_Segmentation


/* =========================================================
BUSINESS QUESTION 9:
Revenue Share Percentage by Segment
Objective:
Calculate the percentage contribution of each segment
to overall business revenue.
========================================================= */
SELECT Customer_Segment,
		
		ROUND(SUM(Monetary),0)  AS Revenue,

		ROUND(100.0 * SUM(Monetary)/SUM(SUM(Monetary)) over(),2) AS Percentage_Revenue

		FROM RFM_Segmentation

GROUP BY Customer_Segment

ORDER BY Percentage_Revenue DESC

/*
Project Summary:
This project performs RFM-based customer segmentation using SQL Server.
The analysis identifies customer behavior patterns, revenue contribution,
high-value customers, and churn-risk segments to support business decisions.
*/

