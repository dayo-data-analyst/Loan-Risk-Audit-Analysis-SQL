-- LOAN RISK ANALYSIS 

-- Objective: Identify high-risk customers using financial indicators

-- PREVIEW DATA

SELECT * FROM loans;

SELECT * FROM customers;

-- JOIN DATASETS
-- Purpose: Combine customer income with loan details
-- Business Value: Enables full financial risk assessment


SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id;


-- CREATE BASE DATASET USING CTE
-- Purpose: Structure dataset for analysis


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
),

SELECT * FROM loan_data;

-- CREATE RISK CLASSIFICATION
-- Purpose: Segment customers based on risk factors

-- Risk Logic:
--   - High Risk:
--       missed_payments >= 4 OR credit_score < 400
--   - Medium Risk:
--       missed_payments BETWEEN 2 AND 3 OR credit_score BETWEEN 400 AND 600
--   - Low Risk:
--       missed_payments < 2 AND credit_score > 600


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
),

risk_analysis AS (
SELECT *,
CASE
WHEN missed_payments >= 4 OR credit_score < 400 THEN 'High Risk'
WHEN missed_payments BETWEEN 2 AND 3 OR credit_score BETWEEN 400 AND 600 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_level
FROM loan_data
)

SELECT * FROM risk_analysis;


-- IDENTIFY HIGH-RISK CUSTOMERS
-- Purpose: Focus on customers likely to default


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
),

risk_analysis AS (
SELECT *,
CASE
WHEN missed_payments >= 4 OR credit_score < 400 THEN 'High Risk'
WHEN missed_payments BETWEEN 2 AND 3 OR credit_score BETWEEN 400 AND 600 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_level
FROM loan_data
)

SELECT *
FROM risk_analysis
WHERE risk_level = 'High Risk';


-- RISK DISTRIBUTION
-- Purpose: Understand how customers are spread across risk levels


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
),

risk_analysis AS (
SELECT *,
CASE
WHEN missed_payments >= 4 OR credit_score < 400 THEN 'High Risk'
WHEN missed_payments BETWEEN 2 AND 3 OR credit_score BETWEEN 400 AND 600 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_level
FROM loan_data
)

SELECT
risk_level,
COUNT(*) AS total_customers
FROM risk_analysis
GROUP BY risk_level
ORDER BY total_customers DESC;


-- AVERAGE LOAN BY RISK LEVEL
-- Purpose: Understand exposure per risk segment


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
),

risk_analysis AS (
SELECT *,
CASE
WHEN missed_payments >= 4 OR credit_score < 400 THEN 'High Risk'
WHEN missed_payments BETWEEN 2 AND 3 OR credit_score BETWEEN 400 AND 600 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS risk_level
FROM loan_data
)

SELECT
risk_level,
AVG(loan_amount) AS avg_loan_amount
FROM risk_analysis
GROUP BY risk_level;


-- LOAN TO INCOME RATIO ANALYSIS
-- Purpose: Measure financial burden on customers


WITH loan_data AS (
SELECT
l.customer_id,
l.loan_amount,
l.missed_payments,
l.credit_score,
c.income,
(l.loan_amount * 1.0 / c.income) AS loan_to_income_ratio
FROM loans l
JOIN customers c
ON l.customer_id = c.customer_id
)

SELECT *
FROM loan_data
ORDER BY loan_to_income_ratio DESC;


-- Key Insight:
/* High-risk customers are primarily driven by low credit scores, and high missed payment counts. Loan-to-income ratio further,
highlights customers with financial strain.
*/
