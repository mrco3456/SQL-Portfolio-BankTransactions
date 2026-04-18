USE BankTransactions; 

SELECT 
   SUM(CASE WHEN TransactionID IS NULL THEN 1 ELSE 0 END) AS null_transactionID, 
   SUM(CASE WHEN AccountID IS NULL THEN 1 ELSE 0 END) AS null_AccountID, 
   SUM(CASE WHEN TransactionAmount IS NULL THEN 1 ELSE 0 END) AS null_Amount, 
   SUM(CASE WHEN TransactionDate IS NULL THEN 1 ELSE 0 END) AS null_Date, 
   SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS null_Location, 
   SUM(CASE WHEN CustomerOccupation IS NULL THEN 1 ELSE 0 END) AS null_Occupation, 
   SUM(CASE WHEN IP_Address IS NULL THEN 1 ELSE 0 END) AS null_IP 
FROM banktransactionsdata;