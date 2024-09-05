Analysis Solutions:



-- 1. How do the frequency and average amount of claims vary by month?

SELECT DATE_TRUNC('month', Claimdate) AS "Monthly Claim Frequency", COUNT(*) AS ClaimFrequency,
ROUND(AVG(claimamount),2) AS "Average Claim Amount" from claims
GROUP BY"Monthly Claim Frequency"
ORDER BY "Monthly Claim Frequency" ;


-- 2. What is the gender distribution among customers?
	SELECT gender,
	COUNT(*) AS count,
	Round(Count(*) * 100.0/ (Select COUNT(*) FROM customers), 2) AS Percentage
	FROM Customers
	Group BY Gender;


-- 3. Which state has the highest number of customers?

	SELECT state, count(customer_id) As Total_Customers
	FROM customers
	GROUP BY state
	

-- 4. Which customer has filed the highest number of claims?
SELECT firstname, lastname, count(claim_id) AS Number_Of_Claims from customers C
INNER JOIN policies P ON P.customer_id = C.customer_id
INNER JOIN Claims CS on Cs.policy_id = P. Policy_id
GROUP BY firstname, lastname
ORDER BY Number_Of_Claims  DESC
LIMIT 1;

-- 5. How do the claim amounts and frequency of claims differ across various policy types?


SELECT 
    PT.policy_name,
    COUNT(C.claim_id) AS total_claims,
    ROUND(AVG(C.claimamount), 2) AS average_claim_amount,
	SUM(C.claimamount) AS Total_Claim_Amount
FROM PolicyTypes PT
JOIN Policies P ON PT.policytype_id = P.policytype_id
JOIN Claims C ON P.policy_id = C.policy_id
GROUP BY PT.policy_name
ORDER BY total_claims DESC;



-- 6. How does the number of claims and claim amounts vary by state
	WITH StateClaims AS (
    SELECT 
        C.state,
        COUNT(CL.claim_id) AS total_claims,
        SUM(CL.claimamount) AS total_amount
    FROM Customers C
    JOIN Policies P ON C.customer_id = P.customer_id
    JOIN Claims CL ON P.policy_id = CL.policy_id
    GROUP BY C.state
)
SELECT 
    state,
    total_claims,
    total_amount,
    ROUND(total_claims * 100.0 / SUM(total_claims) OVER (), 2) AS percentage_of_total_claims
FROM StateClaims;


-- 7. What is the distribution of claim statuses (e.g., approved, pending, rejected) over time?
	WITH ClaimStatusTrends AS (
    SELECT 
        claimstatus,
        DATE_TRUNC('month', claimdate) AS claim_month,
        COUNT(*) AS status_count
    FROM Claims
    GROUP BY claimstatus, claim_month
)
SELECT 
    claimstatus,
    claim_month,
    status_count,
    ROUND(100.0 * status_count / SUM(status_count) OVER (PARTITION BY claim_month), 2) AS monthly_percentage
FROM ClaimStatusTrends;


-- 8. Which type of claim is  most frequently reported?
		SELECT 
   c_description,
   COUNT(*) AS frequency
FROM Claims
GROUP BY c_description
ORDER BY frequency DESC
LIMIT 5;

-- 9.  How do the number of claims filed vary among different customer age groups?
SELECT 
	CASE
	WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 20 AND 30  THEN '20-30' 	
	WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dob) BETWEEN 31 AND 40  THEN '31-40'
	ELSE '40+'
	END AS "Age Group", COUNT(claim_id)
FROM customers C
INNER JOIN policies P ON P.customer_id = C.customer_id
INNER JOIN Claims CS ON CS.policy_id = P.policy_id
GROUP BY "Age Group"
ORDER BY "Age Group" asc;





