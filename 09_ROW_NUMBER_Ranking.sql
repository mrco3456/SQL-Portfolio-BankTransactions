USE BankTransactions;

SELECT 
    TransactionID,
    AccountID,
    TransactionAmount,
    TransactionDate,
    ROW_NUMBER() OVER (
        PARTITION BY AccountID 
        ORDER BY TransactionAmount DESC
    ) AS rank_by_amount
FROM BankTransactionsdata
ORDER BY AccountID, rank_by_amount;