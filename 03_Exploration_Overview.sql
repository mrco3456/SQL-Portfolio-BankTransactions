USE BankTransactions; 

SELECT 
    COUNT(*) As total_rows, 
    COUNT(DISTINCT AccountID) AS unique_accounts, 
    COUNT(DISTINCT Location) AS unique_cities, 
    COUNT(DISTINCT CustomerOccupation) AS unique_occupations, 
    MIN(TransactionDate) AS star_date, 
    MAX(TransactionDate) AS end_date
FROM banktransactionsdata; 
