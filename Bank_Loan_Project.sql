SELECT * FROM bank_loan

-- Total Loan Applications
SELECT 
	COUNT(id) As Total_Loan_Applications 
FROM bank_loan

-- Month-to-Date (MTD) Loan Applications
SELECT 
	COUNT(id) As MTD_Total_Loan_Applications 
FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month-to-Date (PMTD) Loan Applications
SELECT 
	COUNT(id) As PMTD_Total_Loan_Applications 
FROM bank_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Total Funded Amount
SELECT 
	SUM(loan_amount) AS Total_Funded_Amount 
FROM bank_loan;

-- MTD Total Funded Amount
SELECT 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

-- PMTD Total Funded Amount
SELECT 
	SUM(loan_amount) AS PMTD_Total_Funded_Amount 
FROM bank_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

-- Total Amount Received
SELECT 
	SUM(total_payment) AS Total_Amount_received
FROM bank_loan

-- MTD Total Amount Received
SELECT 
	SUM(total_payment) AS MTD_Total_Amount_received
FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;


-- PMTD Total Amount Received
SELECT 
	SUM(total_payment) AS PMTD_Total_Amount_received
FROM bank_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

-- Average Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_Int_Rate FROM bank_loan;

-- MTD Average Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Int_Rate FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021


-- PMTD Average Interest Rate
SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Int_Rate FROM bank_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Average Debt-to-Income (DTI)
SELECT ROUND(AVG(dti), 4) *100 AS Avg_DTI FROM bank_loan;

-- MTD Average Debt-to-Income (DTI)
SELECT ROUND(AVG(dti), 4) *100 AS MTD_Avg_DTI FROM bank_loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- MTD Average Debt-to-Income (DTI)
SELECT ROUND(AVG(dti), 4) *100 AS PMTD_MTD_Avg_DTI FROM bank_loan
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

--==================================
--------- GOOD LOAN ISSUED ---------

-- Good Loan Percentage

SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan

-- Good Loan Applications
SELECT 
	COUNT(id) AS Good_Loan_Applications 
FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount 
FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Amount Received
SELECT 
	SUM(total_payment) AS Good_Loan_amount_received 
FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


--==================================
--------- BAD LOAN ISSUED ---------

-- Bad Loan Percentage

SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan

-- Bad Loan Applications
SELECT 
	COUNT(id) AS Bad_Loan_Applications 
FROM bank_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan
WHERE loan_status = 'Charged Off'

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan
WHERE loan_status = 'Charged Off';

-- LOAN STATUS --
SELECT
	loan_status,
	COUNT(id) AS Total_loan_application,
    SUM(total_payment) AS Total_Amount_Received,
    SUM(loan_amount) AS Total_Funded_Amount,
    AVG(int_rate * 100) AS Interest_Rate,
    AVG(dti * 100) AS DTI
FROM
    bank_loan
GROUP BY
    loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;

-- MONTH
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

--- STATE
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC;

-- TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY term
ORDER BY term;

-- EMPLOYEE LENGTH
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY emp_length
ORDER BY emp_length;

-- PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY purpose
ORDER BY purpose;

-- HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY home_ownership
ORDER BY COUNT(id) DESC;
