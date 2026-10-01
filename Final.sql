use final;

select sum(Price*Quantity) as TotalRevenue, TransactionDate
from transactions t, products p
where p.ProductID = t.ProductID
and YEAR(TransactionDate) = 2024
group by TransactionDate
order by TotalRevenue desc;

-- Question 5:
select sum(Price*Quantity) as TotalRevenue, Category
from products p, transactions t
where p.ProductID = t.ProductID
and YEAR(TransactionDate) = 2024
group by Category
order by TotalRevenue desc;

-- Question 23:
select sum(Price*Quantity) as TotalRevenue, ProductName
from products p, transactions t
where p.ProductID = t.ProductID
and YEAR(TransactionDate) = 2024
group by ProductName
order by TotalRevenue desc;

-- Question 34:
select avg(Price) as AvgPrice, Category
from products
group by Category
order by AvgPrice desc;

-- Question 40:
select count(TransactionID) as Transactions, Month(TransactionDate) as MonthDate
from transactions
group by MonthDate
order by Transactions;

-- Question 47:
select sum(Quantity) as NumSold, ProductName
from products p, transactions t
where p.ProductID = t.ProductID
and YEAR(TransactionDate) = 2024
group by ProductName
having NumSold >= 6;

select count(t.ProductID) as NumSold, ProductName
from products p, transactions t
where p.ProductID = t.ProductID
group by productName
order by NumSold desc;

-- Question 49:
select count(p.ProductID), Category
from products p
group by Category;

-- Question 57:
select max(Price) as HighestPrice, ProductName
from products
group by ProductName
order by HighestPrice desc
limit 5;