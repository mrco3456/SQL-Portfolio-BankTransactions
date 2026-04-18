USE BankTransactions;

SELECT
    TransactionID,
    AccountID,
    LEFT(AccountID, 2) AS account_type,
    RIGHT(AccountID, 5) AS account_number,
    ROUND(TransactionAmount, 2) AS TransactionAmount,
    CAST(TransactionDate AS DATE) AS transaction_date,
    DATEPART(YEAR, TransactionDate) AS transaction_year,
    DATEPART(MONTH, TransactionDate) AS transaction_month,
    TransactionType,
    Location,
    UPPER(CustomerOccupation) AS CustomerOccupation,
    Channel,
    CustomerAge,
    AccountBalance,
    ROW_NUMBER() OVER (
        PARTITION BY AccountID 
        ORDER BY TransactionAmount DESC
    ) AS rank_by_amount
INTO CleanBankTransactions
FROM BankTransactionsdata;