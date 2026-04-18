USE BankTransactions;

SELECT 
    TransactionID,
    TransactionAmount,
    CAST(TransactionAmount AS FLOAT) / 100 AS corrected_amount
FROM BankTransactionsdata
ORDER BY TransactionID;