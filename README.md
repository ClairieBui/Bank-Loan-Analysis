# Bank-Loan-Analysis (MSSQL + TABLEAU PROJECT)
## 📌 **Project Overview**
A comprehensive bank loan analysis report was created to monitor and evaluate lending activities. The goal was to offer insights into essential loan metrics and their trends over time, supporting data-driven decision-making, assessing portfolio health, and identifying patterns to refine lending strategies.

## ❓ **Problem Statement**
The bank is struggling to understand its loans performance. The key areas of concern include:
- **Total Loan Application** - Tracking MTD and MoM changes to evaluate demand and outreach effectiveness.
- **Total Funded Amount** - Monitoring loan disbursements to optimize funding and liquidity.
- **Total Amount Received** - Analyzing repayments to assess collection efficiency and defaults.
- **Average Interest Rate** - Tracking interest rate trends to ensure competitiveness and profitability.
- **Average Debt-to-Income Ratio (DTI)** -  Evaluating borrower risk and repayment capacity.
- **Good Loan Application** - Tracking number of loan applications falling under the 'Good Loan' category, which consists of loans with a loan status of 'Fully Paid' and 'Current.'
- **Good Loan Funded Amount** - Determining the total amount of funds disbursed as 'Good Loans.'
- **Good Loan Amount Received** - Tracking total amount received from borrowers for 'Good Loans'.
- **Bad Loan Application** - Tracking number of loan applications falling under the 'Bad Loan' category, which consists of loans with a loan status of 'Charged off'
- **Bad Loan Funded Amount** - Determining the total amount of funds disbursed as 'Bad Loans.'
- **Bad Loan Amount Received** - Tracking the total amount received from borrowers for 'Bad Loans'.

## 🛠️ **Skills Demonstrated**
- __MSSQL__ for analysis.
- __Tableau__ for data visualization and analysis.

## 📊 **Dataset Information**
- **Source**: Excel file containing sales data.
- **Key Columns**:
  - `id`
  - `emp_lenghth`
  - `emp_title`
  - `home_ownership`
  - `issue_date`
  - `last_payment_date`
  - `term`
  - `dti`
  - `int_rate`
  - `loan_amount`
  - `total_payment`
  - `purpose`
  
 ## 📈 **Analysis & Visualizations**
 
This project leverages MSSQL to conduct an in-depth analysis of bank loan data, focusing on key lending metrics and trends. The analysis includes:
- Loan Application Trends: Evaluating total loan applications on a Month-over-Month (MoM) and Month-to-Date (MTD) basis.
- Loan Quality Assessment: Gaining insights into the proportion of good loans vs. bad loans to assess portfolio performance.
- Interest Rate Analysis: Understanding the average interest rates applied across different loan categories.
- Loan Purpose Insights: Identifying and analyzing the common purposes for loan applications to detect trends in borrowing behavior.

The data is extracted from SQL and visualized in Tableau to create the dashboard.

![image](https://github.com/user-attachments/assets/f4db708f-f906-4303-a3fd-27957b9fcd7e)

![image](https://github.com/user-attachments/assets/fd1b429a-42e2-40d5-a3b9-d1b7c907bcb3)

Both two dashboards provide a comprehensive overview of total loan application, total funded amount, total amount received, average interest rate, average Debt-to-Income Ratio (DTI) from month to month (MOM) and month to date (MTD).

Key Performance Indicators (KPIs) in the Report:

**1. Total Loan Applications:**
- **Total applications**: 38.6K
- **MTD**: 4.3k applications
- **MoM Growth**: +6.91%

**2.Total Funded Amount:**

- **Total funding**: $435.8 million 
- **MTD**: $54.0 million
- **MoM Changes:** +13.0%
  
**3.Total Received Amount:**
- **Total recived**: $473.1 million 
- **MTD**: $58.1 million
- **MoM Changes**: +15.8%
  
**4.Average Interest Rate:**
- **Overall**: 12.0%
- **MTD**: 12.4%
- **MoM**: +3.5%
  
**5.Average Debt-to-Income Ratio (DTI):**
- **DTI**: 13.3%
- **MTD**: 13.7%
- **MoM**: +2.7%

**Overview dashboard**

- 86.2% of loans are classified as good, with a funded amount of $370.2M and good loan amount received is $435.6, showing that the bank get profit from good loan applications.
- 13.8% of loans are bad, with a total funded amount of $65.5M far exceeding the bad loan amount received ($37.3M), indicating a significant repayment gap and potential risk of defaults.
- Total loan applications, funded amounts, and received amounts have steadily increased from January to December.
- California (CA) leads in total loan applications, funded amounts, and received amounts, making it a key focus area for lending.

**Analysis dashboard**

- Total Applications by Term: Short-term loans (36 months) dominate with 28.2K applications, while long-term loans (60 months) account for 10.3K applications, suggesting borrower preference for shorter commitments.
- Total Applications by Employee Length: Borrowers with 10+ years of work experience received the highest funded amounts, implying greater trust in financially stable individuals.
- Total Applications by Purpose: Debt consolidation is the leading loan purpose, reflecting customers’ financial restructuring needs.

## 📌 **Conclusion & Recommendations**

The data highlights strong growth in loan applications, funding, and received amounts, indicating increased customer engagement. The dominance of short-term loans and debt consolidation requests suggests a demand for manageable repayment structures. Moreover, California stands out as a major lending hub, offering strategic opportunities for targeted financial services. Despite positive trends, the presence of bad loans (13.8%) remains a concern, signaling potential credit risk that needs monitoring.

**Recommendations**

- Enhance Credit Risk Assessment: Strengthen borrower screening criteria to reduce bad loans and improve loan recovery rates.
- Leverage Growth in California: Allocate more resources to expand lending in high-demand areas like California.
- Promote Long-Term Loan Offerings: Encourage borrowers to opt for 60-month loans by offering incentives, improving customer retention and revenue stability.
- Seasonal Marketing Strategy: Capitalize on December’s peak application period with tailored promotions and streamlined application processes.
- Improve Debt Consolidation Offerings: Develop customized loan products for debt consolidation to better serve the largest customer segment.
  
By implementing these strategies, the bank can sustain loan growth, mitigate risks, and enhance overall profitability.

## 🚀 **How to Use This Dashboard**
1. **Download the `.pbix` file** from the repository.
2. **Open Power BI Desktop** and load the file.
3. Use filters and slicers to explore insights interactively.

---
🔗 *For further improvements, feel free to fork this project and contribute!* 🚀



