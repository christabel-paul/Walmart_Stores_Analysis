
--get average unemployement rate for each store location
select AVG(Unemployment) as AverageUnemployment
From WalmartStoresales
group by Store

--average fuel price and average unemployment for stores for total time frame
select AVG(Fuel_Price) as AverageFuelPrice, AVG(Unemployment) as AverageUnemployment, AVG(Weekly_Sales) as avgStoreSales
From WalmartStoresales
group by Store


--get number of holiday weeks and see if it affects sales
select Holiday_Flag as HolidayFlag, count(*) as NumberOfWeeks, AVG(Weekly_Sales) as averageWeeklySales
From WalmartStoresales
group by Holiday_Flag

