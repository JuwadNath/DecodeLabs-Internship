	📊 Internship Projects Portfolio															
	🛒 E-Commerce Sales Analysis Using Excel & SQL Server															
	📌 Project Overview															
	As part of my data analytics internship, I completed an end-to-end analysis of an e-commerce sales dataset using Microsoft Excel, Power Query, and Microsoft SQL Server (SSMS). The goal of this project was to transform raw sales data into meaningful business insights through data cleaning, exploratory data analysis (EDA), and SQL-based reporting.															
	This project reflects my ability to work with real-world data, identify trends, and communicate findings that support better business decisions.															
																
																
	🎯 Project Objectives															
	The project focused on:															
	Cleaning and preparing raw sales data for analysis.															
	Exploring customer purchasing patterns and sales trends.															
	Building a SQL database to perform business queries.															
	Measuring key business performance indicators (KPIs).															
	Identifying opportunities for business improvement through data-driven insights.															
																
																
	🛠️ Tools & Technologies															
	Microsoft Excel															
	Power Query															
	Microsoft SQL Server															
	SQL Server Management Studio (SSMS)															
	Pivot Tables															
	Descriptive Statistics															
	Conditional Formatting															
																
																
	📂 About the Dataset															
	The dataset contains transactional records from an online retail business.															
	Records: 1,201															
	Columns: 14															
	Missing Values: 309 (Coupon Code)															
																
																
	🧹 Data Cleaning & Preparation															
	Before beginning the analysis, I cleaned and prepared the dataset using Power Query.															
	The cleaning process included:															
	Converting the dataset into an Excel Table.															
	Correcting column data types.															
	Replacing missing coupon codes with "NO COUPON".															
	Removing duplicate records.															
	Creating new Order Year and Order Month columns for time-based analysis.															
	Standardizing text values for consistency.															
	Validating the dataset to eliminate data quality issues.															
	Loading the cleaned dataset back into Excel for analysis.															
	These steps ensured that the data was accurate, consistent, and ready for meaningful analysis.															
			
			Cleaned Data Set													
<img width="893" height="239" alt="Cleaned Data Image" src="https://github.com/user-attachments/assets/6b0b7749-b3a6-4f3c-9b8c-5f9fcead079f" />
	
  📊 Exploratory Data Analysis (EDA)															
	Using Excel, I explored the dataset to understand customer behavior, product performance, and sales trends.															
	Key Findings															
	Average Order Value: $1,053.97													Average Quantity Purchased: 2.95 items											Average Items in Cart: 5.5															
	Top Revenue-Generating Products:												Chair															
	Printer															
	Laptop															
	Highest Revenue Payment Method:													Credit Card															
	Best Marketing Channel:															Instagram															
	
	Outlier analysis also revealed several unusually large transactions (above $1,751.93), suggesting bulk purchases or promotional sales.															

DESCRIPTIVE STATISTICS ANALYSIS FOR DEEPER  DATA INSIGHTS														
<img width="444" height="208" alt="Descriptives Statistics " src="https://github.com/user-attachments/assets/66efed02-165c-441e-abc5-920856038750" />

QUARTILE ANALYSIS FOR DATA DISTRIBUTIONS AND OUTLIERS
<img width="881" height="254" alt="Outlier and Quartile images" src="https://github.com/user-attachments/assets/b9f0dcd8-9cd1-46b4-8ede-731309a732e7" />

PIVOT TABLES USED TO ANALYZE TRENDS		
<img width="629" height="245" alt="Pivot Tables images" src="https://github.com/user-attachments/assets/a880679a-5044-4490-bce8-7a997833af7a" />

	💾 SQL Analysis															
	After cleaning the dataset, I imported it into Microsoft SQL Server and used SQL queries to analyze business performance.															
	The analysis included:															Data validation															
	Filtering and aggregation														KPI calculation															
	Customer analysis															
	Product performance reporting													Revenue analysis															
		
		CLEANED DATA USING SQL														<img width="683" height="281" alt="Cleaned_Sql_Data" src="https://github.com/user-attachments/assets/58da8dcd-2ca3-493b-b64a-1efbee480e1d" />
																
		TABLE CREATED USING SQL														<img width="695" height="258" alt="ALL TABLE" src="https://github.com/user-attachments/assets/088d2f6b-e98a-4ab2-9fa7-17b693af51f3" />
																
		TABLE ALTERATION TO INSERT YEAR AND MONTH COLUMN	
<img width="380" height="394" alt="Adding year and month image" src="https://github.com/user-attachments/assets/eaca996f-a65c-48db-81b3-23f9d3cbb639" />
    
		TABLE FILTERING USING WHERE CLAUSE TO DISPLAY CANCELLED ORDER	
<img width="409" height="269" alt="Cancelled Order Images" src="https://github.com/user-attachments/assets/c0c888e8-46ba-4bf0-829a-0491da779046" />

TABLE CREATED USING GROUP BY TO DISPLAY REVENUE BY PRODUCT
<img width="259" height="248" alt="Product by Revenue image" src="https://github.com/user-attachments/assets/b292cd37-c1d7-4e86-a813-047b551e6985" />

TABLE CREATED USING HAVING CLAUSE TO DISPLAY PRODUCTS GREATER THAN 150,000	

<img width="331" height="296" alt="Revenue greater than 150,000 image" src="https://github.com/user-attachments/assets/cd5e56fe-7dc0-4f0b-8b87-186a9c9f9423" />

TABLE CREATED USING ORDER BY AND CASE STATEMENT TO DISPLAY MONTHLY REVENUE TREND	

<img width="308" height="364" alt="Monthly Trend Revenue image" src="https://github.com/user-attachments/assets/c79c0d36-86bf-4833-af46-01db4fbcec0b" />

      AGGREGATE TABLE CREATED TO DISPLAY TOTAL REVENUE		
 <img width="302" height="132" alt="Total Revenue image" src="https://github.com/user-attachments/assets/be782317-3b03-45d3-82a8-14860cdccd69" />

			AGGREGATE TABLE CREATED TO SHOW TOP 5 PRODUCTS	
<img width="263" height="236" alt="Top 5 product image" src="https://github.com/user-attachments/assets/b2810a75-463d-4d93-a716-758648cc8179" />

 
  
  Business Performance Summary													  
    KPI	Result														
	Total Orders	1,200														
	Total Revenue	$1,264,761.96 													Average Order Value	$1,053.97 													Average Quantity per Order	2 Items												Cancelled Orders	250														
																
																
	📈 Key Business Insights															
	Customer & Payment Behaviour															
	Online Payments were the most frequently used payment method.															
	Credit Card transactions generated the highest revenue.															
	Instagram was the most successful customer acquisition channel.															
	Product Performance															
	The highest revenue-generating products were:															
	1. Chair															
	2. Printer															
	3. Laptop															
	4. Tablet															
	5. Monitor															
	Revenue Analysis															
	Revenue was fairly balanced across all payment methods, indicating that customers actively used multiple payment options.															
	High-Value Transactions															
	The largest order recorded was $3,456.40, highlighting the presence of bulk purchases or promotional transactions that significantly influenced overall revenue.															
																
																
	💡 Recommendations															
	Based on the analysis, I recommend:															
	Investing more in Instagram marketing, as it consistently generated the highest revenue.															
	Investigating cancelled and returned orders to improve customer satisfaction and operational efficiency.															
	Continuing to promote high-performing products such as Chairs, Printers, and Laptops.															
	Monitoring high-value transactions separately to better understand customer purchasing behaviour and promotional effectiveness.															
																
📚 Skills Demonstrated															
	Throughout this project, I strengthened my skills in:							Data Cleaning															
	Data Transformation															
	Power Query															
	Exploratory Data Analysis (EDA)													SQL Querying															
	Aggregate Functions															
	CASE Statements															
	GROUP BY & HAVING															
	Joins															
	Common Table Expressions (CTEs)													KPI Development															
	Business Reporting															
	Data Storytelling															
																
																
	📌 Conclusion															
	This project demonstrates my ability to work with raw business data and transform it into actionable insights using Excel and SQL Server.				From cleaning and preparing the data to performing exploratory analysis and writing SQL queries, I gained practical experience in solving real business problems through data. The insights generated from this project provide valuable information on customer behaviour, product performance, payment preferences, marketing effectiveness, and overall business performance.						More importantly, this project reflects my passion for using data to support informed decision-making and create business value.															
👤 About Me															
	Nathaniel Adejumo															
	Aspiring Data Analyst with a growing passion for transforming data into meaningful insights. I enjoy working with SQL, Excel, Power BI, and data visualization to solve business problems and continuously expand my analytical skills.															
	Thank you for taking the time to explore my project. Feedback and suggestions are always welcome.															
																
