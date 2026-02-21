WITH MonthlyRevenue AS (
    SELECT 
        c.CategoryName,
        FORMAT(o.OrderDate, 'yyyy-MM') AS YearMonth,
        (od.UnitPrice * od.Quantity) AS GrossRevenue,
        (od.UnitPrice * od.Quantity * (1 - od.Discount)) AS NetRevenue
    FROM Categories c
    JOIN Products p ON c.CategoryID = p.CategoryID
    JOIN [Order Details] od ON p.ProductID = od.ProductID
    JOIN Orders o ON od.OrderID = o.OrderID
)
SELECT 
    CategoryName,
    YearMonth,
    SUM(GrossRevenue) AS GrossRevenue,
    SUM(NetRevenue) AS NetRevenue,
    SUM(GrossRevenue - NetRevenue) AS DeltaGrossNet,
    ((SUM(GrossRevenue) - SUM(NetRevenue)) / NULLIF(SUM(GrossRevenue), 0)) * 100 AS PercentLeakage
FROM MonthlyRevenue
GROUP BY CategoryName, YearMonth
ORDER BY YearMonth ASC, PercentLeakage DESC;
