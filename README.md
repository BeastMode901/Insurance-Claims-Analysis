# Insurance Claims Analysis

### Project Overview
This project uses PostgreSQL to analyze an insurance database, uncovering trends in claim frequency and amounts, and examining claims by policy type, state, and customer demographics.

### Datasets
- **Claims**  
- **Customers**  
- **Policies**  
- **Policy Types**

### Tools
- **PostgreSQL** – Used for creating tables, inserting data, and performing data analysis.  
  [Download PostgreSQL Here](https://www.postgresql.org/download/windows/)

### Skills Applied
- JOINs  
- Aggregations  
- CTEs (Common Table Expressions)  
- Window Functions  
- Case Statements  

### Analysis Questions
1. How do the number of insurance claims and their average amounts change across different months?  
2. What is the breakdown of customers by gender?  
3. Which state contains the largest customer base?  
4. Identify the customer who has submitted the most claims.  
5. How do claim amounts and frequency of claims differ across various policy types?  
6. How does the number of claims and claim amounts vary by state?  
7. How do claim statuses (approved, pending, rejected) vary over time?  
8. Determine the claim type with the highest frequency.  
9. How does claim frequency differ across customer age groups?  

### Summary of Findings
- The frequency of claims per month is relatively consistent, with **October** showing the highest average claim amount and **November** the lowest.  
- The gender distribution among customers is nearly equal, with males and females each representing approximately 50% of the customer base.  
- **California** has the largest number of customers and the highest total claim amount. **Georgia** and four other states have the fewest customers. **Illinois** ranks second in total claims, while **New York** has the second-highest total claim amount.  
- **Ethan Harris** has filed the most claims, with a total of five.  
- The number of claims per policy type is similar across the board, but **Auto Insurance** leads in both average and total claim amounts.  
- Claim statuses vary throughout the year, with the majority being either approved or pending, compared to rejected claims.  
- **“Storm Damage”** is the most frequently reported claim type.  
- Customers aged **31–40 years** file the most claims, compared to those aged 20–30 and 40+.  
