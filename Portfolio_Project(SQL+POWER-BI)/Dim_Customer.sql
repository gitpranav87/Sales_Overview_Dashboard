--Cleansed Dim_Customer Table
SELECT 
  c.customerkey as CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname as [FirstName], 
  --,[MiddleName]
  c.lastname as [LastName], 
  c.firstname + ' ' + c.lastname as [FullName], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  case c.gender when 'M' then 'Male' when 'F' then 'Female' end as [Gender], 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase as [DateFirstPurchase], 
  --,[CommuteDistance]
  g.city as [CustomerCity] 
from 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.geographykey = c.geographykey 
order by 
  CustomerKey asc
