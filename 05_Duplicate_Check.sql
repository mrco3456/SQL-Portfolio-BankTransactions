USE BankTransactions;

SELECT 
    TransactionID,
    COUNT(TransactionID) AS duplicates
FROM BankTransactionsdata
GROUP BY TransactionID
HAVING COUNT(TransactionID) > 1
ORDER BY duplicates DESC; 

