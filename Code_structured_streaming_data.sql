---
-- Batch of 22 Orders
----- 
SELECT t.[CustomerTransactionID]
      ,t.[CustomerID]
      ,t.[TransactionDate]
      ,t.[AmountExcludingTax]
      ,t.[TaxAmount]
      ,t.[TransactionAmount]
      ,t.[OutstandingBalance]
      ,t.[FinalizationDate]
      ,i.[InvoiceID]
      ,i.[StockItemID]
      ,i.[Quantity]
      ,i.[UnitPrice]
  FROM [Sales].[CustomerTransactions] as t
  LEFT OUTER JOIN [Sales].[InvoiceLines] as i  
  ON i.[InvoiceID] = t.[InvoiceID]
  WHERE i.[InvoiceID] < 10

---
-- Batch of 20 Orders
----- 
SELECT t.[CustomerTransactionID]
      ,t.[CustomerID]
      ,t.[TransactionDate]
      ,t.[AmountExcludingTax]
      ,t.[TaxAmount]
      ,t.[TransactionAmount]
      ,t.[OutstandingBalance]
      ,t.[FinalizationDate]
      ,i.[InvoiceID]
      ,i.[StockItemID]
      ,i.[Quantity]
      ,i.[UnitPrice]
  FROM [Sales].[CustomerTransactions] as t
  LEFT OUTER JOIN [Sales].[InvoiceLines] as i  
  ON i.[InvoiceID] = t.[InvoiceID]
  WHERE i.[InvoiceID] BETWEEN 10 and  20

---
-- Batch of 21 Orders
---
SELECT t.[CustomerTransactionID]
      ,t.[CustomerID]
      ,t.[TransactionDate]
      ,t.[AmountExcludingTax]
      ,t.[TaxAmount]
      ,t.[TransactionAmount]
      ,t.[OutstandingBalance]
      ,t.[FinalizationDate]
      ,i.[InvoiceID]
      ,i.[StockItemID]
      ,i.[Quantity]
      ,i.[UnitPrice]
  FROM [Sales].[CustomerTransactions] as t
  LEFT OUTER JOIN [Sales].[InvoiceLines] as i  
  ON i.[InvoiceID] = t.[InvoiceID]
  WHERE i.[InvoiceID] BETWEEN 21 and  30

---
-- Batch of 24 Orders
---
SELECT t.[CustomerTransactionID]
      ,t.[CustomerID]
      ,t.[TransactionDate]
      ,t.[AmountExcludingTax]
      ,t.[TaxAmount]
      ,t.[TransactionAmount]
      ,t.[OutstandingBalance]
      ,t.[FinalizationDate]
      ,i.[InvoiceID]
      ,i.[StockItemID]
      ,i.[Quantity]
      ,i.[UnitPrice]
  FROM [Sales].[CustomerTransactions] as t
  LEFT OUTER JOIN [Sales].[InvoiceLines] as i  
  ON i.[InvoiceID] = t.[InvoiceID]
  WHERE i.[InvoiceID] BETWEEN 31 and  40
