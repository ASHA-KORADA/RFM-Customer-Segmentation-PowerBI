

# 📌 Project Overview

This project focuses on analyzing customer purchasing behavior using **RFM (Recency, Frequency, Monetary) Analysis** to identify high-value customers, churn risks, and revenue-driving customer segments.

The project was developed using:

- **SQL Server 2022** for backend analytics and customer segmentation
- **Power BI** for interactive dashboard visualization
- **DAX** for customer-level calculations and dynamic analysis

The goal of this project is to demonstrate how customer segmentation can support data-driven business decisions, customer retention strategies, and revenue optimization.

---

# 📊 What is RFM Analysis?

RFM is a customer segmentation technique based on:

- **Recency (R):** How recently a customer made a purchase
- **Frequency (F):** How often a customer purchases
- **Monetary (M):** How much revenue a customer generates

Customers are grouped into segments based on their purchasing behavior patterns.

---

# 🛠 Tools & Technologies Used

- SQL Server 2022
- Power BI
- DAX (Data Analysis Expressions)
- Data Modeling
- Window Functions (`NTILE`)
- Customer Segmentation
- Business Intelligence & Analytics

---

# 🔧 Project Workflow

## 1️⃣ Data Preparation
- Used a synthetic e-commerce transaction dataset
- Cleaned and structured transactional data

## 2️⃣ SQL-Based RFM Analysis
- Calculated Recency, Frequency, and Monetary metrics
- Created reusable SQL Views
- Applied `NTILE(5)` scoring logic
- Built customer segmentation logic using SQL

## 3️⃣ Customer Segmentation
Customers were classified into:

- Champions
- Loyal Customers
- At Risk
- Lost Customers
- Others

## 4️⃣ Business Insights Analysis
Performed SQL-based business analysis including:

- Segment distribution analysis
- Revenue contribution analysis
- Churn-risk identification
- Customer ranking analysis
- Customer behavior comparison

## 5️⃣ Dashboard Development
- Built interactive Power BI dashboard
- Added KPI cards, slicers, scatter plots, and segmentation visuals
- Created customer behavior visualizations

---

# 📂 Project Structure
```text
RFM-Customer-Segmentation-PowerBI
│
├── Dataset
│   ├── README.md
│   └── RFM_Ecommerce_Dataset.xlsx
│
├── SQL_Project
│   ├── README.md
│   ├── RFM_Customer_Segmentation.sql
│   ├── Business_Insights_Queries.sql
│   │
│   └── SQL_Results
│       ├── README.md
│       ├── 01_Customer_Segment_Distribution.png
│       ├── 02_Revenue_by_Customer_Segment.png
│       ├── 03_At_Risk_Customers_Analysis.png
│       ├── 04_Revenue_Share_by_Segment.png
│       └── RFM Customer Segmentation Insights.png
│
├── Dashboard
│   ├── README.md
│   ├── RFM_Analysis.png
│   └── RFM_Analysis.pbix
│
└── README.md

---

# 📈 Key Business Insights

## ✅ Business Strengths

* Loyal Customers form the largest customer segment, indicating strong customer retention.
* Loyal Customers contribute a significant share of business revenue.
* Champions segment represents highly engaged premium customers.

## ⚠️ Business Risks

* Several high-spending customers belong to “At Risk” and “Lost Customers” segments.
* Lost Customers show high average spending, indicating revenue leakage through customer churn.
* At Risk customers still contribute substantial revenue and require immediate retention focus.

## 🚀 Growth Opportunities

* “Others” segment contributes the highest overall revenue, showing strong conversion potential.
* Converting moderate-value customers into Loyal Customers can improve long-term business growth.

## 🎯 Strategic Recommendations

* Implement retention campaigns for At Risk customers.
* Launch win-back strategies for Lost Customers.
* Strengthen loyalty programs for Champions and Loyal Customers.
* Use segmentation-based marketing for personalized targeting.

---

# 📊 Dashboard Preview

https://github.com/ASHA-KORADA/RFM-Customer-Segmentation-PowerBI/blob/main/Dashboard/RFM_Analysis.png

---

# 📌 SQL Business Questions Solved

1. Customer Segment Distribution Analysis
2. Revenue Contribution by Segment
3. Average Spending Analysis
4. Top 10 High-Value Customers
5. At Risk Customers Analysis
6. Lost Customers Analysis
7. Segment-wise Customer Behavior Analysis
8. Customer Revenue Ranking
9. Revenue Share Percentage by Segment

---

# 📌 Key SQL Concepts Used

* Aggregate Functions
* GROUP BY
* CASE Statements
* Window Functions
* NTILE()
* Views
* Customer Segmentation Logic
* Revenue Analytics
* Ranking Functions

---

# 📌 Note

This project uses a **synthetic e-commerce dataset** created to simulate realistic customer purchasing behavior and business scenarios.

---

# 💬 Feedback

I would love to hear your feedback and suggestions for improvement!

---

# 🔗 Connect With Me

* LinkedIn:
  [https://www.linkedin.com/posts/asha-korada_powerbi-dataanalytics-rfmanalysis-share-7448373915548033024-pNv1](https://www.linkedin.com/posts/asha-korada_powerbi-dataanalytics-rfmanalysis-share-7448373915548033024-pNv1)

```
