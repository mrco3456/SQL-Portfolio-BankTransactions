USE BankTransactions;

SELECT
    TransactionID,
    AccountID,
    LEFT(AccountID, 2) AS account_prefix,
    RIGHT(AccountID, 5) AS account_number,
    CustomerOccupation,
    UPPER(CustomerOccupation) AS occupation_upper,
    LEN(CustomerOccupation) AS occupation_length,
    TRIM(CustomerOccupation) AS occupation_trimmed
FROM BankTransactionsdata
ORDER BY TransactionID;