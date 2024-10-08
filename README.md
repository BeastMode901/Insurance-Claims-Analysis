# Insurance-Claims-Analysis

### Project Overview

This project uses PostgreSQL to analyze an insurance database, uncovering trends in claim frequency and amounts, and examining claims by policy type, state, and customer demographics.

  ### Datasets
  - Claims
  - Customers
  - Policies
  - Policy Types

### Tool
- PostgreSQL - Utilized for creating tables, inserting data, and performing data analysis.
    - [Download PostgreSQL Here](https://www.postgresql.org/download/windows/)
 
### Skills Applied
- JOINs
- Aggregations
- CTEs
- Window Functions
- Case Statements

  
### Questions Explored
1. How do the frequency and average amount of claims vary by month?
2. What is the gender distribution among customers?
3. Which state has the highest number of customers?
4. Which customer has filed the highest number of claims?
5. How do the claim amounts and frequency of claims differ across various policy types?
6. How does the number of claims and claim amounts vary by state
7. What is the distribution of claim statuses (e.g., approved, pending, rejected) over time?
8. Which type of claim is  most frequently reported?
9. How do the number of claims filed vary among different customer age groups?

### Summary of Findings
- The frequency of claims per month is consistent, with October showing the highest average claim amount and November the lowest.
- The gender distribution among customers is nearly equal, with males and females each making up about 50% of the customer base.
- California has the largest number of customers and the highest total claim amount. Georgia and four other states have the fewest customers. Illinois ranks second in total claims, while New York has the second-highest total claim amount.
- Ethan Harris has filed the most claims, with a total of five.
- The number of claims per policy type is similar across the board. However, Auto Insurance leads in both average and total claim amounts.
- Claim statuses vary significantly throughout the year, with the majority being either approved or pending compared to rejected claims.
- "Storm Damage" is the most frequently reported claim type.
- Customers aged 31-40 years file the most claims, compared to those aged 20-30 and 40+.
