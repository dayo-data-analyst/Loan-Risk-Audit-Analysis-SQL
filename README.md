# 🏦 Loan Risk & Audit Analysis Using SQL

### SQL | Banking Analytics | Credit Risk | Audit Analytics | Financial Intelligence

<img width="886" height="615" alt="Join_data" src="https://github.com/user-attachments/assets/63c34a04-513b-429a-9c36-43a77a7f98d2" />

---

# 📌 Executive Summary

Financial institutions rely on accurate credit risk assessment to protect profitability, maintain healthy loan portfolios, and comply with regulatory requirements.

This project demonstrates how SQL can be used to analyse banking data, identify high-risk borrowers, and support audit and lending decisions through data-driven insights.

Using customer and loan datasets, I developed reusable SQL queries that combine borrower information, classify customers by credit risk, calculate financial ratios, and highlight potential loan defaults.

Beyond technical implementation, this project applies accounting principles and audit thinking to explain how deteriorating loan quality impacts a bank's balance sheet, profitability, liquidity, and Expected Credit Loss (ECL) provisions.

The project demonstrates practical SQL programming, financial analytics, business analysis, and executive-level data storytelling.

---

# 🎯 Business Problem

Banks issue thousands of loans every year.

Without effective portfolio monitoring, financial institutions face challenges such as:

- Rising loan defaults
- Increasing credit losses
- Poor lending decisions
- Weak portfolio quality
- Reduced profitability
- Regulatory compliance risks

Management therefore requires an analytical solution capable of identifying high-risk borrowers before loans become non-performing assets.

This project demonstrates how SQL analytics can support proactive lending decisions and strengthen internal audit processes.

---

# 🎯 Project Objectives

The primary objectives of this project were to:

- Integrate customer and loan datasets
- Identify borrowers with elevated default risk
- Develop reusable SQL queries using Common Table Expressions (CTEs)
- Classify borrowers into High, Medium, and Low Risk categories
- Calculate Loan-to-Income ratios
- Produce actionable business insights for lending decisions
- Explain the accounting and audit implications of loan defaults

These objectives were achieved using advanced SQL techniques and financial analysis.

---

# 📂 Dataset Overview

The project combines two related banking datasets.

## Customer Dataset

Contains borrower information including:

- Customer ID
- Annual Income

## Loan Dataset

Contains lending information including:

- Customer ID
- Loan Amount
- Credit Score
- Missed Payments

The datasets are linked using **Customer_ID**, providing a complete borrower profile for credit risk analysis. :contentReference[oaicite:1]{index=1}

---

# 🛠️ Technologies Used

| Technology | Purpose |
|------------|----------|
| SQL | Data Extraction & Analysis |
| SQL Server | Database Management |
| Microsoft Excel | Result Validation & Reporting |
| INNER JOIN | Dataset Integration |
| Common Table Expressions (CTEs) | Query Optimisation |
| CASE Statements | Risk Classification |
| Aggregate Functions | Portfolio Analysis |
| GROUP BY | Customer Segmentation |
| ORDER BY | Risk Prioritisation |

---

# 🔄 Analytical Workflow

```text
Customer Dataset
          │
          ▼
Loan Dataset
          │
          ▼
INNER JOIN
          │
          ▼
Reusable CTE
          │
          ▼
Risk Classification
          │
          ▼
Loan-to-Income Ratio
          │
          ▼
Portfolio Risk Assessment
          │
          ▼
Business & Audit Recommendations
```

---

# 🧠 SQL Methodology

The project follows a structured analytical workflow.

### 1️⃣ Data Exploration

Reviewed both banking datasets to understand available variables and validate data quality.

---

### 2️⃣ Dataset Integration

Used an **INNER JOIN** to combine customer income with loan performance, creating a comprehensive borrower profile.

**Business Value**

Combining customer demographics with lending information provides the foundation for meaningful credit risk analysis. :contentReference[oaicite:2]{index=2}

---

### 3️⃣ Common Table Expressions (CTEs)

Implemented reusable CTEs to improve:

- Readability
- Maintainability
- Query scalability
- Future development

This approach reflects SQL best practices commonly used in enterprise data environments. :contentReference[oaicite:3]{index=3}

---

### 4️⃣ Risk Classification

Borrowers were classified into:

🟥 High Risk

🟨 Medium Risk

🟩 Low Risk

Classification was based on:

- Credit Score
- Missed Payments

using SQL CASE statements.

This enables lenders to prioritise portfolio reviews based on risk severity. :contentReference[oaicite:4]{index=4}

---

### 5️⃣ Financial Ratio Analysis

Calculated:

**Loan-to-Income Ratio**

This metric measures a customer's repayment capacity by comparing loan exposure to annual income.

Higher ratios indicate greater financial strain and increased probability of default. :contentReference[oaicite:5]{index=5}

---

<img width="886" height="615" alt="Screenshoot SQL Loan Risk" src="https://github.com/user-attachments/assets/006a2636-2590-4fb1-bb8b-0af5c7438a21" />

<img width="1045" height="735" alt="Screenshot 2 SQL LOAN Risk Audit" src="https://github.com/user-attachments/assets/3ee1221a-cbec-423a-bb34-4fbc7b9149c2" />

<img width="1120" height="566" alt="Screenshot SQL Query Risk Analysis" src="https://github.com/user-attachments/assets/fe9fb5e4-aee2-4792-bcc0-9b93c683ead5" />

<img width="1176" height="563" alt="Screenshot SQL Query Risk CASE Group By" src="https://github.com/user-attachments/assets/763a8b65-451e-43eb-9dd9-3d17e6134bf3" />

# ❓ Business Questions Answered

The analysis answers several important banking questions:

- Which customers are most likely to default?
- How strongly does credit score influence loan risk?
- Which borrowers have excessive debt burdens?
- Which customers require closer monitoring?
- How can lenders improve approval decisions?
- How can auditors prioritise high-risk accounts?

---

# 🔍 Key Insights

## 💳 Credit Score

Borrowers with lower credit scores consistently demonstrate significantly higher credit risk.

### Business Insight

Credit score remains one of the strongest predictors of future loan performance.

---

## ⚠️ Missed Payments

Customers with four or more missed repayments are considerably more likely to become non-performing borrowers.

### Business Insight

Historical repayment behaviour is one of the most reliable indicators of future default. :contentReference[oaicite:6]{index=6}

---

## 💰 Loan-to-Income Ratio

Borrowers with larger loan balances relative to income experience greater financial pressure.

### Business Insight

These customers are more vulnerable to:

- Interest rate increases
- Inflation
- Income shocks
- Unexpected financial expenses

Higher Loan-to-Income ratios therefore indicate elevated credit risk. :contentReference[oaicite:7]{index=7}

---

## 📊 Multi-Factor Risk Assessment

Combining:

- Credit Score
- Income
- Loan Amount
- Missed Payments

produces a significantly more reliable assessment than relying on a single metric.

This mirrors modern credit risk frameworks used by financial institutions. :contentReference[oaicite:8]{index=8}

---

# 💼 Business Impact

This analysis helps financial institutions:

- Improve lending decisions
- Reduce default rates
- Strengthen portfolio quality
- Increase profitability
- Improve risk monitoring
- Enhance regulatory compliance
- Support strategic credit management

---

# 💰 Accounting Perspective

From an accounting perspective, deteriorating credit quality directly affects financial reporting.

## Expected Credit Loss (ECL)

Higher-risk loans require larger impairment provisions under expected credit loss frameworks.

## Balance Sheet

Loan defaults reduce:

- Loan Assets
- Net Loan Portfolio Value

while increasing:

- Allowance for Credit Losses

This weakens the bank's financial position.

## Income Statement

Loan defaults reduce:

- Interest Income

while increasing:

- Bad Debt Expense
- Impairment Expense

The combined effect is lower profitability.

## Cash Flow

Poor repayment behaviour reduces operating cash inflows and increases collection costs, negatively affecting liquidity. :contentReference[oaicite:9]{index=9}

---

# 🔍 Audit Perspective

The analysis also supports Internal Audit by enabling auditors to:

- Identify high-risk borrowers
- Review lending controls
- Validate impairment provisions
- Assess compliance with lending policies
- Evaluate overdue loan monitoring
- Strengthen internal control systems

This demonstrates how SQL analytics contributes beyond reporting to governance and risk assurance. :contentReference[oaicite:10]{index=10}

---

# 💡 Strategic Recommendations

Based on the analysis:

✔ Strengthen credit approval criteria

✔ Monitor borrowers with high Loan-to-Income ratios

✔ Deploy automated early-warning systems

✔ Increase monitoring of deteriorating credit profiles

✔ Enhance portfolio review processes

✔ Expand future work using predictive machine learning models

These recommendations help lenders reduce default risk while improving portfolio resilience. :contentReference[oaicite:11]{index=11}

---

# 📊 Skills Demonstrated

## SQL

- INNER JOIN
- Common Table Expressions (CTEs)
- CASE Statements
- Aggregate Functions
- GROUP BY
- ORDER BY
- Financial Ratio Analysis

## Banking Analytics

- Credit Risk Assessment
- Loan Portfolio Analysis
- Customer Risk Classification
- Lending Decision Support

## Business Analysis

- Risk Assessment
- Business Intelligence
- Executive Reporting
- Decision Support
- Data Storytelling

## Accounting & Audit

- Expected Credit Loss (ECL)
- Financial Statement Analysis
- Internal Audit Analytics
- Loan Portfolio Monitoring
- Risk Governance

---

# 🚀 Future Enhancements

Potential future developments include:

- Probability of Default (PD) Modelling
- IFRS 9 Expected Credit Loss Modelling
- Machine Learning Risk Prediction
- Interactive Power BI Dashboard
- Automated SQL Stored Procedures
- Credit Portfolio Stress Testing

---

# 📁 Repository Structure

```text
Loan-Risk-Audit-Analysis-SQL
│
├── Dataset
├── SQL Scripts
├── Query Results
├── Project Report
├── Screenshots
└── README.md
```

---

# 👨‍💼 About the Author

## **Dayo Rex Afariogun**

**Business Analyst | Financial Data Analytics | Business Intelligence**

I specialise in transforming financial and operational data into strategic business insights using SQL, Python, Power BI, and Microsoft Excel. With a strong foundation in Accounting and over 14 years of business leadership experience, I combine technical analytics with commercial understanding to support better lending decisions, risk management, and business performance.

📧 **Email:** dayorex7@gmail.com

💼 **LinkedIn:** linkedin.com/in/dayo-afariogun

💻 **GitHub:** github.com/dayo-data-analyst

---

## ⭐ Thank You for Visiting!

If you found this project valuable, feel free to ⭐ **star the repository**, explore my other analytics projects, or connect with me on LinkedIn.

🚀 **Turning financial data into actionable business intelligence.**
